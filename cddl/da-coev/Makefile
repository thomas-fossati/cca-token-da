include ../tools.mk
include ../check.mk
include frags.mk

check: check-da-coev check-da-coev-examples
.PHONY: check

clean: ; rm -f $(CLEANFILES)
.PHONY: clean

$(eval $(call cddl_check_template,da-coev,$(DA_COEV_FRAGS),$(DA_COEV_EXAMPLES)))

include ce.mk
