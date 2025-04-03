include ../tools.mk
include ../check.mk

FRAGS := cca-top-claims.cddl
FRAGS += generic-sign1.cddl

include ../platform/frags.mk
include ../realm/frags.mk
include ../da-coev/frags.mk
include ../da-eat/frags.mk

FRAGS += $(addprefix ../realm/,$(REALM_FRAGS))
FRAGS += $(addprefix ../platform/,$(PLATFORM_FRAGS))
FRAGS += $(addprefix ../da-coev/,$(DA_COEV_FRAGS))
FRAGS += $(addprefix ../da-eat/,$(DA_EAT_FRAGS))

check: check-top check-top-examples
.PHONY: check

clean: ; rm -f $(CLEANFILES)
.PHONY: clean

EXAMPLES := $(wildcard examples/*.diag)

$(eval $(call cddl_check_template,top,$(FRAGS),$(EXAMPLES)))
