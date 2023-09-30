// Copyright 2015 the V8 project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include <iomanip>
#include <sys/shm.h>
#include <fstream>

#include "src/execution/arguments-inl.h"
#include "src/execution/frames-inl.h"
#include "src/execution/isolate-inl.h"
#include "src/interpreter/bytecode-array-iterator.h"
#include "src/interpreter/bytecode-decoder.h"
#include "src/interpreter/bytecode-flags.h"
#include "src/interpreter/bytecode-register.h"
#include "src/interpreter/bytecodes.h"
#include "src/interpreter/interpreter.h"
#include "src/logging/counters.h"
#include "src/runtime/runtime-utils.h"
#include "src/snapshot/snapshot.h"
#include "src/utils/ostreams.h"
#include <stdlib.h>

#define MAPSIZE 65536

namespace v8 {
namespace internal {
  char const *SHM_ENV_VAR = "__AFL_SHM_ID";
  static uint8_t* last_address = 0;
  static bool start_afl = false;
  static unsigned char *afl_area_ptr = NULL;


#ifdef V8_TRACE_UNOPTIMIZED

namespace {

void AdvanceToOffsetForTracing(
    interpreter::BytecodeArrayIterator& bytecode_iterator, int offset) {
  while (bytecode_iterator.current_offset() +
             bytecode_iterator.current_bytecode_size() <=
         offset) {
    bytecode_iterator.Advance();
  }
  DCHECK(bytecode_iterator.current_offset() == offset ||
         ((bytecode_iterator.current_offset() + 1) == offset &&
          bytecode_iterator.current_operand_scale() >
              interpreter::OperandScale::kSingle));
}

void PrintRegisterRange(UnoptimizedFrame* frame, std::ostream& os,
                        interpreter::BytecodeArrayIterator& bytecode_iterator,
                        const int& reg_field_width, const char* arrow_direction,
                        interpreter::Register first_reg, int range) {
  for (int reg_index = first_reg.index(); reg_index < first_reg.index() + range;
       reg_index++) {
    Object reg_object = frame->ReadInterpreterRegister(reg_index);
    os << "      [ " << std::setw(reg_field_width)
       << interpreter::Register(reg_index).ToString() << arrow_direction;
    reg_object.ShortPrint(os);
    os << " ]" << std::endl;
  }
}

void PrintRegisters(UnoptimizedFrame* frame, std::ostream& os, bool is_input,
                    interpreter::BytecodeArrayIterator& bytecode_iterator,
                    Handle<Object> accumulator) {
  static const char kAccumulator[] = "accumulator";
  static const int kRegFieldWidth = static_cast<int>(sizeof(kAccumulator) - 1);
  static const char* kInputColourCode = "\033[0;36m";
  static const char* kOutputColourCode = "\033[0;35m";
  static const char* kNormalColourCode = "\033[0;m";
  const char* kArrowDirection = is_input ? " -> " : " <- ";
  if (FLAG_log_colour) {
    os << (is_input ? kInputColourCode : kOutputColourCode);
  }

  interpreter::Bytecode bytecode = bytecode_iterator.current_bytecode();

  // Print accumulator.
  if ((is_input && interpreter::Bytecodes::ReadsAccumulator(bytecode)) ||
      (!is_input && interpreter::Bytecodes::WritesAccumulator(bytecode))) {
    os << "      [ " << kAccumulator << kArrowDirection;
    accumulator->ShortPrint(os);
    os << " ]" << std::endl;
  }

  // Print the registers.
  int operand_count = interpreter::Bytecodes::NumberOfOperands(bytecode);
  for (int operand_index = 0; operand_index < operand_count; operand_index++) {
    interpreter::OperandType operand_type =
        interpreter::Bytecodes::GetOperandType(bytecode, operand_index);
    bool should_print =
        is_input
            ? interpreter::Bytecodes::IsRegisterInputOperandType(operand_type)
            : interpreter::Bytecodes::IsRegisterOutputOperandType(operand_type);
    if (should_print) {
      interpreter::Register first_reg =
          bytecode_iterator.GetRegisterOperand(operand_index);
      int range = bytecode_iterator.GetRegisterOperandRange(operand_index);
      PrintRegisterRange(frame, os, bytecode_iterator, kRegFieldWidth,
                         kArrowDirection, first_reg, range);
    }
  }
  if (!is_input && interpreter::Bytecodes::IsShortStar(bytecode)) {
    PrintRegisterRange(frame, os, bytecode_iterator, kRegFieldWidth,
                       kArrowDirection,
                       interpreter::Register::FromShortStar(bytecode), 1);
  }
  if (FLAG_log_colour) {
    os << kNormalColourCode;
  }
}

}  // namespace

RUNTIME_FUNCTION(Runtime_TraceUnoptimizedBytecodeEntry) {
  if (!FLAG_trace_ignition && !FLAG_trace_baseline_exec) {
    return ReadOnlyRoots(isolate).undefined_value();
  }

  JavaScriptFrameIterator frame_iterator(isolate);
  UnoptimizedFrame* frame =
      reinterpret_cast<UnoptimizedFrame*>(frame_iterator.frame());

  if (frame->is_interpreted() && !FLAG_trace_ignition) {
    return ReadOnlyRoots(isolate).undefined_value();
  }
  if (frame->is_baseline() && !FLAG_trace_baseline_exec) {
    return ReadOnlyRoots(isolate).undefined_value();
  }

  SealHandleScope shs(isolate);
  DCHECK_EQ(3, args.length());
  Handle<BytecodeArray> bytecode_array = args.at<BytecodeArray>(0);
  int bytecode_offset = args.smi_value_at(1);
  Handle<Object> accumulator = args.at(2);

  int offset = bytecode_offset - BytecodeArray::kHeaderSize + kHeapObjectTag;
  interpreter::BytecodeArrayIterator bytecode_iterator(bytecode_array);
  AdvanceToOffsetForTracing(bytecode_iterator, offset);
  if (offset == bytecode_iterator.current_offset()) {
    StdoutStream os;

    // Print bytecode.
    const uint8_t* base_address = reinterpret_cast<const uint8_t*>(
        bytecode_array->GetFirstBytecodeAddress());
    const uint8_t* bytecode_address = base_address + offset;

    if (frame->is_baseline()) {
      os << "B-> ";
    } else {
      os << " -> ";
    }
    os << static_cast<const void*>(bytecode_address) << " @ " << std::setw(4)
       << offset << " : ";
    interpreter::BytecodeDecoder::Decode(os, bytecode_address);
    os << std::endl;
    // Print all input registers and accumulator.
    PrintRegisters(frame, os, true, bytecode_iterator, accumulator);

    os << std::flush;
  }
  return ReadOnlyRoots(isolate).undefined_value();
}

RUNTIME_FUNCTION(Runtime_TraceUnoptimizedBytecodeExit) {
  if (!FLAG_trace_ignition && !FLAG_trace_baseline_exec) {
    return ReadOnlyRoots(isolate).undefined_value();
  }

  JavaScriptFrameIterator frame_iterator(isolate);
  UnoptimizedFrame* frame =
      reinterpret_cast<UnoptimizedFrame*>(frame_iterator.frame());

  if (frame->is_interpreted() && !FLAG_trace_ignition) {
    return ReadOnlyRoots(isolate).undefined_value();
  }
  if (frame->is_baseline() && !FLAG_trace_baseline_exec) {
    return ReadOnlyRoots(isolate).undefined_value();
  }

  SealHandleScope shs(isolate);
  DCHECK_EQ(3, args.length());
  Handle<BytecodeArray> bytecode_array = args.at<BytecodeArray>(0);
  int bytecode_offset = args.smi_value_at(1);
  Handle<Object> accumulator = args.at(2);

  int offset = bytecode_offset - BytecodeArray::kHeaderSize + kHeapObjectTag;
  interpreter::BytecodeArrayIterator bytecode_iterator(bytecode_array);
  AdvanceToOffsetForTracing(bytecode_iterator, offset);
  // The offset comparison here ensures registers only printed when the
  // (potentially) widened bytecode has completed. The iterator reports
  // the offset as the offset of the prefix bytecode.
  if (bytecode_iterator.current_operand_scale() ==
          interpreter::OperandScale::kSingle ||
      offset > bytecode_iterator.current_offset()) {
    StdoutStream os;

    // Print all output registers and accumulator.
    PrintRegisters(frame, os, false, bytecode_iterator, accumulator);
    os << std::flush;
  }
  return ReadOnlyRoots(isolate).undefined_value();
}

#endif

  unsigned char *cgi_get_shm_mem() {
    std::string id_str;
    int shm_id;

    if (afl_area_ptr == NULL){
      std::string port = getenv("PORT");
      std::ifstream aflInfoFile ("/tmp/" +  port + ".afl");
      std::getline(aflInfoFile, id_str, '\n');

      if (id_str.compare("0") == 0){
        return NULL;
      } else {

        int id_int = atoi(id_str.c_str());
        shm_id = atoi(id_str.c_str());
      }

      afl_area_ptr = (unsigned char*)  shmat(shm_id, NULL, 0);
      printf("[WC][runtime-interp] shm_id = %x, AFL ptr = %p %d \n", shm_id, afl_area_ptr, afl_area_ptr[0]);

    }
    return afl_area_ptr;

  }

  RUNTIME_FUNCTION(Runtime_InterpreterAFLBitmapBytecodeEntry) {

    SealHandleScope shs(isolate);
    DCHECK_EQ(3, args.length());
    CONVERT_ARG_HANDLE_CHECKED(BytecodeArray, bytecode_array, 0);
    CONVERT_SMI_ARG_CHECKED(bytecode_offset, 1);
    CONVERT_ARG_HANDLE_CHECKED(Object, accumulator, 2);
    char *run_afl_trace = getenv("RUN_AFL_TRACE");
    if (run_afl_trace ){
      if (afl_area_ptr == NULL){
        cgi_get_shm_mem();

      }
      if (afl_area_ptr != NULL){
        int offset = bytecode_offset - BytecodeArray::kHeaderSize + kHeapObjectTag;
        interpreter::BytecodeArrayIterator bytecode_iterator(bytecode_array);

        bytecode_iterator.SetOffset(offset);

        if (offset == bytecode_iterator.current_offset()) {
          uint8_t *base_address = reinterpret_cast<uint8_t *>(bytecode_array->GetFirstBytecodeAddress());
          uint8_t *bytecode_address = base_address + offset;

          if (last_address > 0) {
            std::uintptr_t uip_last_address = reinterpret_cast<std::uintptr_t>(last_address);
            std::uintptr_t uip_bytecode_address = reinterpret_cast<std::uintptr_t>(bytecode_address);
            auto bitmapLoc = (uip_last_address ^ uip_bytecode_address) % MAPSIZE;
            afl_area_ptr[bitmapLoc]++;

            last_address = 0;

          } else {

            interpreter::Bytecode bytecode = bytecode_iterator.current_bytecode();
            if (interpreter::Bytecodes::IsCallOrConstruct(bytecode) ||
                interpreter::Bytecodes::IsCallRuntime(bytecode) ||
                interpreter::Bytecodes::IsSwitch(bytecode) ||
                interpreter::Bytecodes::IsJump(bytecode)) {

              last_address = bytecode_address;

            }
          }
        }
      }

    } else {
      afl_area_ptr = NULL;
      last_address = 0;
    }

  }

#ifdef V8_TRACE_FEEDBACK_UPDATES

RUNTIME_FUNCTION(Runtime_TraceUpdateFeedback) {
  if (!FLAG_trace_feedback_updates) {
    return ReadOnlyRoots(isolate).undefined_value();
  }

  SealHandleScope shs(isolate);
  DCHECK_EQ(3, args.length());
  Handle<JSFunction> function = args.at<JSFunction>(0);
  int slot = args.smi_value_at(1);
  auto reason = String::cast(args[2]);

  int slot_count = function->feedback_vector().metadata().slot_count();

  StdoutStream os;
  os << "[Feedback slot " << slot << "/" << slot_count << " in ";
  function->shared().ShortPrint(os);
  os << " updated to ";
  function->feedback_vector().FeedbackSlotPrint(os, FeedbackSlot(slot));
  os << " - ";

  StringCharacterStream stream(reason);
  while (stream.HasMore()) {
    uint16_t character = stream.GetNext();
    PrintF("%c", character);
  }

  os << "]" << std::endl;

  return ReadOnlyRoots(isolate).undefined_value();
}

#endif

}  // namespace internal
}  // namespace v8
