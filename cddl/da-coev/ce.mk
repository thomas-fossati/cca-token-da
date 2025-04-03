include ../tools.mk

github := https://github.com/TrustedComputingGroup/
ce_rel_dl := concise-evidence/releases/download/
ce_tag := cddl-8d15719
ce_url := $(join $(github), $(join $(ce_rel_dl), $(ce_tag)))

ce-autogen.cddl: ; $(curl) -LO $(ce_url)/$@

CLEANFILES += ce-autogen.cddl
