class EnumCache;
class DescriptorArray;
// Alias for HeapObject::IsEnumCache() that avoids inlining.
// https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=5&c=1
V8_EXPORT_PRIVATE bool IsEnumCache_NonInline(HeapObject o);

// Definition https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=5&c=1
template <class D, class P>
class TorqueGeneratedEnumCache : public P {
  static_assert(
      std::is_same<EnumCache, D>::value,
      "Use this class as direct base for EnumCache.");
  static_assert(
      std::is_same<Struct, P>::value,
      "Pass in Struct as second template parameter for TorqueGeneratedEnumCache.");

 public: 
  using Super = P;
  using TorqueGeneratedClass = TorqueGeneratedEnumCache<D,P>;

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=6&c=3
  inline FixedArray keys() const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=6&c=3
  inline FixedArray keys(PtrComprCageBase cage_base) const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=6&c=3
  inline void set_keys(FixedArray value, WriteBarrierMode mode = UPDATE_WRITE_BARRIER);

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=7&c=3
  inline FixedArray indices() const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=7&c=3
  inline FixedArray indices(PtrComprCageBase cage_base) const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=7&c=3
  inline void set_indices(FixedArray value, WriteBarrierMode mode = UPDATE_WRITE_BARRIER);

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=5&c=1
  V8_INLINE static D cast(Object object);
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=5&c=1
  V8_INLINE static D unchecked_cast(Object object) {
    return bit_cast<D>(object);
  }

  DECL_PRINTER(EnumCache)

#ifdef VERIFY_HEAP
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=5&c=1
  V8_EXPORT_PRIVATE void EnumCacheVerify(Isolate* isolate);
#endif  // VERIFY_HEAP

  static constexpr int kStartOfStrongFieldsOffset = P::kHeaderSize;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=6&c=3
  static constexpr int kKeysOffset = P::kHeaderSize;
  static constexpr int kKeysOffsetEnd = kKeysOffset + kTaggedSize - 1;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=7&c=3
  static constexpr int kIndicesOffset = kKeysOffsetEnd + 1;
  static constexpr int kIndicesOffsetEnd = kIndicesOffset + kTaggedSize - 1;
  static constexpr int kEndOfStrongFieldsOffset = kIndicesOffsetEnd + 1;
  static constexpr int kStartOfWeakFieldsOffset = kIndicesOffsetEnd + 1;
  static constexpr int kEndOfWeakFieldsOffset = kIndicesOffsetEnd + 1;
  static constexpr int kHeaderSize = kIndicesOffsetEnd + 1;
  static constexpr int kSize = kIndicesOffsetEnd + 1;

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=5&c=1
  V8_INLINE static constexpr int32_t SizeFor() {
    DCHECK(kHeaderSize == kSize && kHeaderSize == 24);
    int32_t size = kHeaderSize;
    return size;
  }

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=5&c=1
  V8_INLINE int32_t AllocatedSize() const {
    return SizeFor();
  }

  friend class Factory;

  template <class DAlias = D>
  constexpr TorqueGeneratedEnumCache() : P() {
    static_assert(
        std::is_base_of<TorqueGeneratedEnumCache, DAlias>::value,
        "class TorqueGeneratedEnumCache should be used as direct base for EnumCache.");
  }

 protected:
  inline explicit TorqueGeneratedEnumCache(Address ptr);
  // Special-purpose constructor for subclasses that have fast paths where
  // their ptr() is a Smi.
  inline explicit TorqueGeneratedEnumCache(Address ptr, HeapObject::AllowInlineSmiStorage allow_smi);
};

// Alias for HeapObject::IsDescriptorArray() that avoids inlining.
// https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=17&c=1
V8_EXPORT_PRIVATE bool IsDescriptorArray_NonInline(HeapObject o);

// Definition https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=17&c=1
template <class D, class P>
class TorqueGeneratedDescriptorArray : public P {
  static_assert(
      std::is_same<DescriptorArray, D>::value,
      "Use this class as direct base for DescriptorArray.");
  static_assert(
      std::is_same<HeapObject, P>::value,
      "Pass in HeapObject as second template parameter for TorqueGeneratedDescriptorArray.");

 public: 
  using Super = P;
  using TorqueGeneratedClass = TorqueGeneratedDescriptorArray<D,P>;

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=20&c=9
  inline uint16_t number_of_all_descriptors() const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=20&c=9
  inline void set_number_of_all_descriptors(uint16_t value);

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=21&c=3
  inline uint16_t number_of_descriptors() const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=21&c=3
  inline void set_number_of_descriptors(uint16_t value);

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=22&c=3
  inline uint16_t raw_number_of_marked_descriptors() const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=22&c=3
  inline void set_raw_number_of_marked_descriptors(uint16_t value);

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=23&c=3
  inline uint16_t filler16_bits() const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=23&c=3
  inline void set_filler16_bits(uint16_t value);

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=24&c=3
  inline EnumCache enum_cache() const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=24&c=3
  inline EnumCache enum_cache(PtrComprCageBase cage_base) const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=24&c=3
  inline void set_enum_cache(EnumCache value, WriteBarrierMode mode = UPDATE_WRITE_BARRIER);

  // Torque type: (Undefined | class Name)
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=25&c=3
  inline PrimitiveHeapObject descriptors_key(int i) const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=25&c=3
  inline PrimitiveHeapObject descriptors_key(PtrComprCageBase cage_base, int i) const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=25&c=3
  inline void set_descriptors_key(int i, PrimitiveHeapObject value, WriteBarrierMode mode = UPDATE_WRITE_BARRIER);

  // Torque type: (Undefined | Smi)
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=25&c=3
  inline Object descriptors_details(int i) const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=25&c=3
  inline Object descriptors_details(PtrComprCageBase cage_base, int i) const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=25&c=3
  inline void set_descriptors_details(int i, Object value, WriteBarrierMode mode = UPDATE_WRITE_BARRIER);

  // Torque type: (class JSReceiver | Undefined | Null | False | True | class Symbol | class String | BigInt | class HeapNumber | Smi | class AccessorInfo | class ClassPositions | class AccessorPair | Weak<class Map>)
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=25&c=3
  inline MaybeObject descriptors_value(int i) const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=25&c=3
  inline MaybeObject descriptors_value(PtrComprCageBase cage_base, int i) const;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=25&c=3
  inline void set_descriptors_value(int i, MaybeObject value, WriteBarrierMode mode = UPDATE_WRITE_BARRIER);

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=17&c=1
  V8_INLINE static D cast(Object object);
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=17&c=1
  V8_INLINE static D unchecked_cast(Object object) {
    return bit_cast<D>(object);
  }

  DECL_PRINTER(DescriptorArray)

#ifdef VERIFY_HEAP
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=17&c=1
  V8_EXPORT_PRIVATE void DescriptorArrayVerify(Isolate* isolate);
#endif  // VERIFY_HEAP

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=20&c=9
  static constexpr int kNumberOfAllDescriptorsOffset = P::kHeaderSize;
  static constexpr int kNumberOfAllDescriptorsOffsetEnd = kNumberOfAllDescriptorsOffset + kUInt16Size - 1;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=21&c=3
  static constexpr int kNumberOfDescriptorsOffset = kNumberOfAllDescriptorsOffsetEnd + 1;
  static constexpr int kNumberOfDescriptorsOffsetEnd = kNumberOfDescriptorsOffset + kUInt16Size - 1;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=22&c=3
  static constexpr int kRawNumberOfMarkedDescriptorsOffset = kNumberOfDescriptorsOffsetEnd + 1;
  static constexpr int kRawNumberOfMarkedDescriptorsOffsetEnd = kRawNumberOfMarkedDescriptorsOffset + kUInt16Size - 1;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=23&c=3
  static constexpr int kFiller16BitsOffset = kRawNumberOfMarkedDescriptorsOffsetEnd + 1;
  static constexpr int kFiller16BitsOffsetEnd = kFiller16BitsOffset + kUInt16Size - 1;
  static constexpr int kStartOfStrongFieldsOffset = kFiller16BitsOffsetEnd + 1;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=24&c=3
  static constexpr int kEnumCacheOffset = kFiller16BitsOffsetEnd + 1;
  static constexpr int kEnumCacheOffsetEnd = kEnumCacheOffset + kTaggedSize - 1;
  static constexpr int kEndOfStrongFieldsOffset = kEnumCacheOffsetEnd + 1;
  static constexpr int kStartOfWeakFieldsOffset = kEnumCacheOffsetEnd + 1;
  static constexpr int kHeaderSize = kEnumCacheOffsetEnd + 1;
  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=25&c=3
  static constexpr int kDescriptorsOffset = kEnumCacheOffsetEnd + 1;
  static constexpr int kDescriptorsOffsetEnd = kDescriptorsOffset + 0 - 1;
  static constexpr int kEndOfWeakFieldsOffset = kDescriptorsOffsetEnd + 1;

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=17&c=1
  V8_INLINE static constexpr int32_t SizeFor(int number_of_all_descriptors) {
    int32_t size = kHeaderSize;
    size += number_of_all_descriptors * 24;
    return size;
  }

  // https://source.chromium.org/chromium/chromium/src/+/main:v8/src/objects/descriptor-array.tq?l=17&c=1
  V8_INLINE int32_t AllocatedSize() const {
    return SizeFor(this->number_of_all_descriptors());
  }

  friend class Factory;

  template <class DAlias = D>
  constexpr TorqueGeneratedDescriptorArray() : P() {
    static_assert(
        std::is_base_of<TorqueGeneratedDescriptorArray, DAlias>::value,
        "class TorqueGeneratedDescriptorArray should be used as direct base for DescriptorArray.");
  }

 protected:
  inline explicit TorqueGeneratedDescriptorArray(Address ptr);
  // Special-purpose constructor for subclasses that have fast paths where
  // their ptr() is a Smi.
  inline explicit TorqueGeneratedDescriptorArray(Address ptr, HeapObject::AllowInlineSmiStorage allow_smi);
};

struct TorqueGeneratedDescriptorEntryOffsets {
  static constexpr int kKeyOffset = 0;
  static constexpr int kDetailsOffset = 8;
  static constexpr int kValueOffset = 16;
  static constexpr int kSize = 24;
};

