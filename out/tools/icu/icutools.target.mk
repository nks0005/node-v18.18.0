# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := icutools
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
	'-DU_COMMON_IMPLEMENTATION=1' \
	'-DU_I18N_IMPLEMENTATION=1' \
	'-DU_IO_IMPLEMENTATION=1' \
	'-DU_TOOLUTIL_IMPLEMENTATION=1' \
	'-DU_ATTRIBUTE_DEPRECATED=' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_HAVE_STD_STRING=1' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-Wno-deprecated-declarations \
	-Wno-strict-aliasing \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-std=c99

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-exceptions \
	-std=gnu++17 \
	-frtti

INCS_Debug := \
	-I$(srcdir)/deps/icu-small/source/common \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/tools/toolutil

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
	'-DU_COMMON_IMPLEMENTATION=1' \
	'-DU_I18N_IMPLEMENTATION=1' \
	'-DU_IO_IMPLEMENTATION=1' \
	'-DU_TOOLUTIL_IMPLEMENTATION=1' \
	'-DU_ATTRIBUTE_DEPRECATED=' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_HAVE_STD_STRING=1' \
	'-DUCONFIG_NO_BREAK_ITERATION=0'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-Wno-deprecated-declarations \
	-Wno-strict-aliasing \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release := \
	-std=c99

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-exceptions \
	-std=gnu++17 \
	-frtti

INCS_Release := \
	-I$(srcdir)/deps/icu-small/source/common \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/tools/toolutil

OBJS := \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/collationinfo.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/denseranges.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/filestrm.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/filetools.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/flagparser.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/package.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/pkgitems.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/pkg_genc.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/pkg_gencmn.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/pkg_icu.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/ppucd.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/swapimpl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/toolutil.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/ucbuf.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/ucln_tu.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/ucm.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/ucmstate.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/unewdata.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/uoptions.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/uparse.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/writesrc.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/tools/toolutil/xmlparser.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/appendable.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/bmpset.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/brkeng.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/brkiter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/bytesinkutil.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/bytestream.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/bytestrie.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/bytestriebuilder.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/bytestrieiterator.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/caniter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/characterproperties.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/chariter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/charstr.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/cmemory.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/cstr.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/cstring.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/cwchar.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/dictbe.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/dictionarydata.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/dtintrv.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/edits.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/emojiprops.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/errorcode.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/filteredbrk.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/filterednormalizer2.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/icudataver.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/icuplug.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/loadednormalizer2impl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/localebuilder.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/localematcher.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/localeprioritylist.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/locavailable.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/locbased.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/locdispnames.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/locdistance.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/locdspnm.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/locid.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/loclikely.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/loclikelysubtags.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/locmap.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/locresdata.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/locutil.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/lsr.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/lstmbe.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/messagepattern.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/mlbe.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/normalizer2.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/normalizer2impl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/normlzr.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/parsepos.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/patternprops.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/pluralmap.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/propname.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/propsvec.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/punycode.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/putil.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/rbbi.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/rbbidata.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/rbbinode.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/rbbirb.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/rbbiscan.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/rbbisetb.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/rbbistbl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/rbbitblb.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/rbbi_cache.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/resbund.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/resbund_cnv.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/resource.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/restrace.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ruleiter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/schriter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/serv.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/servlk.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/servlkf.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/servls.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/servnotf.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/servrbf.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/servslkf.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/sharedobject.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/simpleformatter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/static_unicode_sets.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/stringpiece.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/stringtriebuilder.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uarrsort.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ubidi.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ubidiln.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ubiditransform.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ubidiwrt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ubidi_props.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ubrk.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucase.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucasemap.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucasemap_titlecase_brkiter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucat.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uchar.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucharstrie.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucharstriebuilder.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucharstrieiterator.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uchriter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucln_cmn.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucmndata.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv2022.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnvbocu.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnvdisp.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnvhz.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnvisci.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnvlat1.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnvmbcs.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnvscsu.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnvsel.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_bld.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_cb.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_cnv.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_ct.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_err.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_ext.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_io.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_lmb.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_set.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_u16.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_u32.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_u7.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucnv_u8.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucol_swp.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucptrie.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ucurr.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/udata.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/udatamem.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/udataswp.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uenum.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uhash.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uhash_us.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uidna.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uinit.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uinvchar.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uiter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ulist.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uloc.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uloc_keytype.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uloc_tag.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/umapfile.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/umath.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/umutablecptrie.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/umutex.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unames.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unifiedcache.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unifilt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unifunct.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uniset.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unisetspan.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uniset_closure.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uniset_props.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unistr.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unistr_case.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unistr_case_locale.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unistr_cnv.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unistr_props.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unistr_titlecase_brkiter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unorm.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/unormcmp.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uobject.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uprops.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uresbund.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uresdata.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ures_cnv.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uscript.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uscript_props.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/usc_impl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uset.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/usetiter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uset_props.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ushape.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/usprep.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ustack.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ustrcase.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ustrcase_locale.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ustrenum.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ustrfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ustring.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ustrtrns.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ustr_cnv.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ustr_titlecase_brkiter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/ustr_wcs.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/utext.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/utf_impl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/util.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/util_props.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/utrace.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/utrie.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/utrie2.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/utrie2_builder.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/utrie_swap.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uts46.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/utypes.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uvector.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uvectr32.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/uvectr64.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/common/wintz.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/alphaindex.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/anytrans.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/astro.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/basictz.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/bocsu.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/brktrans.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/buddhcal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/calendar.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/casetrn.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/cecal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/chnsecal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/choicfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/coleitr.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/coll.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collation.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationbuilder.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationcompare.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationdata.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationdatabuilder.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationdatareader.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationdatawriter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationfastlatin.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationfastlatinbuilder.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationfcd.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationiterator.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationkeys.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationroot.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationrootelements.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationruleparser.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationsets.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationsettings.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationtailoring.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/collationweights.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/compactdecimalformat.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/coptccal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/cpdtrans.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/csdetect.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/csmatch.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/csr2022.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/csrecog.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/csrmbcs.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/csrsbcs.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/csrucode.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/csrutf8.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/curramt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/currfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/currpinf.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/currunit.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/dangical.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/datefmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/dayperiodrules.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/dcfmtsym.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/decContext.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/decimfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/decNumber.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/displayoptions.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/double-conversion-bignum-dtoa.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/double-conversion-bignum.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/double-conversion-cached-powers.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/double-conversion-double-to-string.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/double-conversion-fast-dtoa.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/double-conversion-string-to-double.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/double-conversion-strtod.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/dtfmtsym.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/dtitvfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/dtitvinf.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/dtptngen.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/dtrule.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/erarules.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/esctrn.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ethpccal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/fmtable.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/fmtable_cnv.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/format.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/formattedvalue.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/formattedval_iterimpl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/formattedval_sbimpl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/formatted_string_builder.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/fphdlimp.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/fpositer.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/funcrepl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/gender.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/gregocal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/gregoimp.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/hebrwcal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/indiancal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/inputext.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/islamcal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/iso8601cal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/japancal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/listformatter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/measfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/measunit.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/measunit_extra.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/measure.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/msgfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/name2uni.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/nfrs.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/nfrule.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/nfsubs.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/nortrans.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/nultrans.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_affixutils.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_asformat.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_capi.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_compact.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_currencysymbols.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_decimalquantity.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_decimfmtprops.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_fluent.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_formatimpl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_grouping.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_integerwidth.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_longnames.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_mapper.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_modifiers.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_multiplier.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_notation.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_output.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_padding.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_patternmodifier.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_patternstring.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_rounding.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_scientific.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_simple.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_skeletons.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_symbolswrapper.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_usageprefs.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/number_utils.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numparse_affixes.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numparse_compositions.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numparse_currency.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numparse_decimal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numparse_impl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numparse_parsednumber.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numparse_scientific.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numparse_symbols.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numparse_validators.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numrange_capi.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numrange_fluent.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numrange_impl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/numsys.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/olsontz.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/persncal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/pluralranges.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/plurfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/plurrule.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/quant.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/quantityformatter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/rbnf.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/rbt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/rbtz.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/rbt_data.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/rbt_pars.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/rbt_rule.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/rbt_set.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/regexcmp.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/regeximp.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/regexst.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/regextxt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/region.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/reldatefmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/reldtfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/rematch.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/remtrans.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/repattrn.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/rulebasedcollator.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/scientificnumberformatter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/scriptset.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/search.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/selfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/sharedbreakiterator.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/simpletz.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/smpdtfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/smpdtfst.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/sortkey.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/standardplural.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/string_segment.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/strmatch.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/strrepl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/stsearch.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/taiwncal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/timezone.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/titletrn.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tmunit.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tmutamt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tmutfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tolowtrn.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/toupptrn.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/translit.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/transreg.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tridpars.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tzfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tzgnames.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tznames.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tznames_impl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tzrule.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/tztrans.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ucal.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ucln_in.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ucol.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ucoleitr.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ucol_res.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ucol_sit.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ucsdet.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/udat.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/udateintervalformat.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/udatpg.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ufieldpositer.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/uitercollationiterator.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ulistformatter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ulocdata.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/umsg.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/unesctrn.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/uni2name.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/units_complexconverter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/units_converter.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/units_data.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/units_router.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/unum.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/unumsys.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/upluralrules.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/uregex.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/uregexc.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/uregion.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/usearch.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/uspoof.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/uspoof_build.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/uspoof_conf.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/uspoof_impl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/utf16collationiterator.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/utf8collationiterator.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/utmscale.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/utrans.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/vtzone.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/vzone.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/windtfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/winnmfmt.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/wintzimpl.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/zonemeta.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/zrule.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/i18n/ztrans.o \
	$(obj).target/$(TARGET)/deps/icu-small/source/stubdata/stubdata.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/tools/icu/icu_implementation.stamp $(obj).target/tools/icu/icu_uconfig.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/tools/icu/libicutools.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/tools/icu/libicutools.a: LIBS := $(LIBS)
$(obj).target/tools/icu/libicutools.a: TOOLSET := $(TOOLSET)
$(obj).target/tools/icu/libicutools.a: $(OBJS)
	$(call create_thin_archive,$@,$^)

# Add target alias
.PHONY: icutools
icutools: $(obj).target/tools/icu/libicutools.a

# Add target alias to "all" target.
.PHONY: all
all: icutools
