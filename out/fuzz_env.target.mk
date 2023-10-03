# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := fuzz_env
DEFS_Debug := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-DNODE_OPENSSL_CONF_NAME=nodejs_conf' \
	'-DNODE_OPENSSL_HAS_QUIC' \
	'-DICU_NO_USER_DATA_OVERRIDE' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNODE_ARCH="x64"' \
	'-DNODE_PLATFORM="linux"' \
	'-DNODE_WANT_INTERNALS=1' \
	'-D__POSIX__' \
	'-DNODE_USE_V8_PLATFORM=1' \
	'-DNODE_V8_SHARED_RO_HEAP' \
	'-DNODE_HAVE_I18N_SUPPORT=1' \
	'-DHAVE_OPENSSL=1' \
	'-DOPENSSL_API_COMPAT=0x10100000L' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=1' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_POSIX_C_SOURCE=200112' \
	'-DNGHTTP2_STATICLIB' \
	'-DNDEBUG' \
	'-DOPENSSL_USE_NODELETE' \
	'-DL_ENDIAN' \
	'-DOPENSSL_BUILDING_OPENSSL' \
	'-DAES_ASM' \
	'-DBSAES_ASM' \
	'-DCMLL_ASM' \
	'-DECP_NISTZ256_ASM' \
	'-DGHASH_ASM' \
	'-DKECCAK1600_ASM' \
	'-DMD5_ASM' \
	'-DOPENSSL_BN_ASM_GF2m' \
	'-DOPENSSL_BN_ASM_MONT' \
	'-DOPENSSL_BN_ASM_MONT5' \
	'-DOPENSSL_CPUID_OBJ' \
	'-DOPENSSL_IA32_SSE2' \
	'-DPADLOCK_ASM' \
	'-DPOLY1305_ASM' \
	'-DRC4_ASM' \
	'-DSHA1_ASM' \
	'-DSHA256_ASM' \
	'-DSHA512_ASM' \
	'-DVPAES_ASM' \
	'-DWHIRLPOOL_ASM' \
	'-DX25519_ASM' \
	'-DOPENSSL_PIC' \
	'-DNGTCP2_STATICLIB' \
	'-DNGHTTP3_STATICLIB' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++17

INCS_Debug := \
	-I$(srcdir)/src \
	-I$(srcdir)/tools/msvs/genfiles \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/cares/include \
	-I$(srcdir)/deps/uv/include \
	-I$(srcdir)/deps/uvwasi/include \
	-I$(srcdir)/test/cctest \
	-I$(srcdir)/deps/histogram/src \
	-I$(srcdir)/deps/histogram/include \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/common \
	-I$(srcdir)/deps/zlib \
	-I$(srcdir)/deps/llhttp/include \
	-I$(srcdir)/deps/nghttp2/lib/includes \
	-I$(srcdir)/deps/brotli/c/include \
	-I$(srcdir)/deps/openssl/openssl/include \
	-I$(srcdir)/deps/openssl/openssl/crypto/include \
	-I$(srcdir)/deps/openssl/config/archs/linux-x86_64/asm/include \
	-I$(srcdir)/deps/openssl/config/archs/linux-x86_64/asm \
	-I$(srcdir)/deps/ngtcp2 \
	-I$(srcdir)/deps/ngtcp2/ngtcp2/lib/includes \
	-I$(srcdir)/deps/ngtcp2/ngtcp2/crypto/includes \
	-I$(srcdir)/deps/ngtcp2/ngtcp2/crypto \
	-I$(srcdir)/deps/ngtcp2/nghttp3/lib/includes

DEFS_Release := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-DNODE_OPENSSL_CONF_NAME=nodejs_conf' \
	'-DNODE_OPENSSL_HAS_QUIC' \
	'-DICU_NO_USER_DATA_OVERRIDE' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNODE_ARCH="x64"' \
	'-DNODE_PLATFORM="linux"' \
	'-DNODE_WANT_INTERNALS=1' \
	'-D__POSIX__' \
	'-DNODE_USE_V8_PLATFORM=1' \
	'-DNODE_V8_SHARED_RO_HEAP' \
	'-DNODE_HAVE_I18N_SUPPORT=1' \
	'-DHAVE_OPENSSL=1' \
	'-DOPENSSL_API_COMPAT=0x10100000L' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=1' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_POSIX_C_SOURCE=200112' \
	'-DNGHTTP2_STATICLIB' \
	'-DNDEBUG' \
	'-DOPENSSL_USE_NODELETE' \
	'-DL_ENDIAN' \
	'-DOPENSSL_BUILDING_OPENSSL' \
	'-DAES_ASM' \
	'-DBSAES_ASM' \
	'-DCMLL_ASM' \
	'-DECP_NISTZ256_ASM' \
	'-DGHASH_ASM' \
	'-DKECCAK1600_ASM' \
	'-DMD5_ASM' \
	'-DOPENSSL_BN_ASM_GF2m' \
	'-DOPENSSL_BN_ASM_MONT' \
	'-DOPENSSL_BN_ASM_MONT5' \
	'-DOPENSSL_CPUID_OBJ' \
	'-DOPENSSL_IA32_SSE2' \
	'-DPADLOCK_ASM' \
	'-DPOLY1305_ASM' \
	'-DRC4_ASM' \
	'-DSHA1_ASM' \
	'-DSHA256_ASM' \
	'-DSHA512_ASM' \
	'-DVPAES_ASM' \
	'-DWHIRLPOOL_ASM' \
	'-DX25519_ASM' \
	'-DOPENSSL_PIC' \
	'-DNGTCP2_STATICLIB' \
	'-DNGHTTP3_STATICLIB'

# Flags passed to all source files.
CFLAGS_Release := \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++17

INCS_Release := \
	-I$(srcdir)/src \
	-I$(srcdir)/tools/msvs/genfiles \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/cares/include \
	-I$(srcdir)/deps/uv/include \
	-I$(srcdir)/deps/uvwasi/include \
	-I$(srcdir)/test/cctest \
	-I$(srcdir)/deps/histogram/src \
	-I$(srcdir)/deps/histogram/include \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/common \
	-I$(srcdir)/deps/zlib \
	-I$(srcdir)/deps/llhttp/include \
	-I$(srcdir)/deps/nghttp2/lib/includes \
	-I$(srcdir)/deps/brotli/c/include \
	-I$(srcdir)/deps/openssl/openssl/include \
	-I$(srcdir)/deps/openssl/openssl/crypto/include \
	-I$(srcdir)/deps/openssl/config/archs/linux-x86_64/asm/include \
	-I$(srcdir)/deps/openssl/config/archs/linux-x86_64/asm \
	-I$(srcdir)/deps/ngtcp2 \
	-I$(srcdir)/deps/ngtcp2/ngtcp2/lib/includes \
	-I$(srcdir)/deps/ngtcp2/ngtcp2/crypto/includes \
	-I$(srcdir)/deps/ngtcp2/ngtcp2/crypto \
	-I$(srcdir)/deps/ngtcp2/nghttp3/lib/includes

OBJS := \
	$(obj).target/$(TARGET)/src/node_snapshot_stub.o \
	$(obj).target/$(TARGET)/test/fuzzers/fuzz_env.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/libnode.a $(obj).target/deps/histogram/libhistogram.a $(obj).target/deps/uvwasi/libuvwasi.a $(obj).target/node_dtrace_header.stamp $(obj).target/node_dtrace_ustack.stamp $(obj).target/node_dtrace_provider.stamp $(obj).target/tools/v8_gypfiles/libv8_snapshot.a $(obj).target/tools/v8_gypfiles/libv8_libplatform.a $(obj).target/tools/icu/libicui18n.a $(obj).target/tools/icu/icuuc.stamp $(obj).target/deps/zlib/libzlib.a $(obj).target/deps/llhttp/libllhttp.a $(obj).target/deps/cares/libcares.a $(obj).target/deps/uv/libuv.a $(obj).target/deps/nghttp2/libnghttp2.a $(obj).target/deps/brotli/libbrotli.a $(obj).target/deps/openssl/libopenssl.a $(builddir)/openssl-cli $(obj).target/deps/ngtcp2/libngtcp2.a $(obj).target/deps/ngtcp2/libnghttp3.a

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
$(obj).target/fuzz_env.stamp: TOOLSET := $(TOOLSET)
$(obj).target/fuzz_env.stamp: $(obj).target/libnode.a $(obj).target/deps/histogram/libhistogram.a $(obj).target/deps/uvwasi/libuvwasi.a $(obj).target/node_dtrace_header.stamp $(obj).target/node_dtrace_ustack.stamp $(obj).target/node_dtrace_provider.stamp $(obj).target/tools/v8_gypfiles/libv8_snapshot.a $(obj).target/tools/v8_gypfiles/libv8_libplatform.a $(obj).target/tools/icu/libicui18n.a $(obj).target/tools/icu/icuuc.stamp $(obj).target/deps/zlib/libzlib.a $(obj).target/deps/llhttp/libllhttp.a $(obj).target/deps/cares/libcares.a $(obj).target/deps/uv/libuv.a $(obj).target/deps/nghttp2/libnghttp2.a $(obj).target/deps/brotli/libbrotli.a $(obj).target/deps/openssl/libopenssl.a $(builddir)/openssl-cli $(obj).target/deps/ngtcp2/libngtcp2.a $(obj).target/deps/ngtcp2/libnghttp3.a FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/fuzz_env.stamp
# Add target alias
.PHONY: fuzz_env
fuzz_env: $(obj).target/fuzz_env.stamp

# Add target alias to "all" target.
.PHONY: all
all: fuzz_env

