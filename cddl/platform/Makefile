include ../tools.mk
include ../check.mk
include frags.mk

check: check-platform check-platform-examples
.PHONY: check

clean: ; rm -f $(CLEANFILES)
.PHONY: clean

$(eval $(call cddl_check_template,platform,$(PLATFORM_FRAGS),$(PLATFORM_EXAMPLES)))
