include ../tools.mk
include ../check.mk
include frags.mk

check: check-realm check-realm-examples
.PHONY: check

clean: ; rm -f $(CLEANFILES)
.PHONY: clean

$(eval $(call cddl_check_template,realm,$(REALM_FRAGS),$(REALM_EXAMPLES)))
