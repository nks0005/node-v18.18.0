#include "src/objects/js-shadow-realms-inl.h"

#include "torque-generated/class-verifiers.h"
#include "src/objects/instance-type-inl.h"

namespace v8 {
namespace internal {

// https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/js-shadow-realms.tq?l=5&c=1
bool IsJSShadowRealm_NonInline(HeapObject o) {
  return o.IsJSShadowRealm();
}

#ifdef VERIFY_HEAP

template <>
void TorqueGeneratedJSShadowRealm<JSShadowRealm, JSObject>::JSShadowRealmVerify(Isolate* isolate) {
  TorqueGeneratedClassVerifiers::JSShadowRealmVerify(JSShadowRealm::cast(*this), isolate);
}


#endif  // VERIFY_HEAP
} // namespace internal
} // namespace v8
