# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := v8_heap_base
### Rules for final target.
$(obj).target/tools/v8_gypfiles/v8_heap_base.stamp: TOOLSET := $(TOOLSET)
$(obj).target/tools/v8_gypfiles/v8_heap_base.stamp:  FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/tools/v8_gypfiles/v8_heap_base.stamp
# Add target alias
.PHONY: v8_heap_base
v8_heap_base: $(obj).target/tools/v8_gypfiles/v8_heap_base.stamp

# Add target alias to "all" target.
.PHONY: all
all: v8_heap_base

