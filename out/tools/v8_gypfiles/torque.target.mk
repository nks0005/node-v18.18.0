# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := torque
DEFS_Debug := \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-DNODE_OPENSSL_CONF_NAME=nodejs_conf' \
	'-DNODE_OPENSSL_HAS_QUIC' \
	'-DICU_NO_USER_DATA_OVERRIDE' \
	'-DV8_GYP_BUILD' \
	'-DV8_TYPED_ARRAY_MAX_SIZE_IN_HEAP=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DV8_TARGET_ARCH_X64' \
	'-DV8_HAVE_TARGET_OS' \
	'-DV8_TARGET_OS_LINUX' \
	'-DV8_EMBEDDER_STRING="-node.26"' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT=1' \
	'-DV8_SHORT_BUILTIN_CALLS' \
	'-DOBJECT_PRINT' \
	'-DV8_INTL_SUPPORT' \
	'-DV8_ATOMIC_OBJECT_FIELD_WRITES' \
	'-DV8_ENABLE_LAZY_SOURCE_POSITIONS' \
	'-DV8_USE_SIPHASH' \
	'-DV8_SHARED_RO_HEAP' \
	'-DV8_WIN64_UNWINDING_INFO' \
	'-DV8_ENABLE_REGEXP_INTERPRETER_THREADED_DISPATCH' \
	'-DV8_ENABLE_WEBASSEMBLY' \
	'-DV8_ENABLE_JAVASCRIPT_PROMISE_HOOKS' \
	'-DV8_ALLOCATION_FOLDING' \
	'-DV8_ALLOCATION_SITE_TRACKING' \
	'-DV8_SCRIPTORMODULE_LEGACY_LIFETIME' \
	'-DV8_ADVANCED_BIGINT_ALGORITHMS' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS' \
	'-DV8_TRACE_MAPS' \
	'-DV8_ENABLE_ALLOCATION_TIMEOUT' \
	'-DV8_ENABLE_FORCE_SLOW_PATH' \
	'-DENABLE_HANDLE_ZAPPING'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-Wno-unused-parameter \
	-Wno-return-type \
	-fno-strict-aliasing \
	-m64 \
	-m64 \
	-g \
	-fdata-sections \
	-ffunction-sections \
	-O3

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-std=gnu++17 \
	-fexceptions

INCS_Debug := \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/deps/v8/include

DEFS_Release := \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-DNODE_OPENSSL_CONF_NAME=nodejs_conf' \
	'-DNODE_OPENSSL_HAS_QUIC' \
	'-DICU_NO_USER_DATA_OVERRIDE' \
	'-DV8_GYP_BUILD' \
	'-DV8_TYPED_ARRAY_MAX_SIZE_IN_HEAP=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DV8_TARGET_ARCH_X64' \
	'-DV8_HAVE_TARGET_OS' \
	'-DV8_TARGET_OS_LINUX' \
	'-DV8_EMBEDDER_STRING="-node.26"' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT=1' \
	'-DV8_SHORT_BUILTIN_CALLS' \
	'-DOBJECT_PRINT' \
	'-DV8_INTL_SUPPORT' \
	'-DV8_ATOMIC_OBJECT_FIELD_WRITES' \
	'-DV8_ENABLE_LAZY_SOURCE_POSITIONS' \
	'-DV8_USE_SIPHASH' \
	'-DV8_SHARED_RO_HEAP' \
	'-DV8_WIN64_UNWINDING_INFO' \
	'-DV8_ENABLE_REGEXP_INTERPRETER_THREADED_DISPATCH' \
	'-DV8_ENABLE_WEBASSEMBLY' \
	'-DV8_ENABLE_JAVASCRIPT_PROMISE_HOOKS' \
	'-DV8_ALLOCATION_FOLDING' \
	'-DV8_ALLOCATION_SITE_TRACKING' \
	'-DV8_SCRIPTORMODULE_LEGACY_LIFETIME' \
	'-DV8_ADVANCED_BIGINT_ALGORITHMS'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-Wno-unused-parameter \
	-Wno-return-type \
	-fno-strict-aliasing \
	-m64 \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer \
	-fdata-sections \
	-ffunction-sections \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-std=gnu++17 \
	-fexceptions

INCS_Release := \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/deps/v8/src/torque/torque.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/tools/v8_gypfiles/libtorque_base.a $(obj).target/tools/v8_gypfiles/v8_shared_internal_headers.stamp $(obj).target/tools/v8_gypfiles/v8_headers.stamp $(obj).target/tools/v8_gypfiles/v8_config_headers.stamp $(obj).target/tools/v8_gypfiles/v8_heap_base_headers.stamp $(obj).target/tools/v8_gypfiles/v8_version.stamp $(obj).target/tools/v8_gypfiles/libv8_libbase.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-m64

LIBS := \
	-ldl \
	-lrt

$(builddir)/torque: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/torque: LIBS := $(LIBS)
$(builddir)/torque: LD_INPUTS := $(OBJS) $(obj).target/tools/v8_gypfiles/libtorque_base.a $(obj).target/tools/v8_gypfiles/libv8_libbase.a
$(builddir)/torque: TOOLSET := $(TOOLSET)
$(builddir)/torque: $(OBJS) $(obj).target/tools/v8_gypfiles/libtorque_base.a $(obj).target/tools/v8_gypfiles/libv8_libbase.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/torque
# Add target alias
.PHONY: torque
torque: $(builddir)/torque

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/torque

