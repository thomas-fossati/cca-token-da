LIBDIR := lib
include $(LIBDIR)/main.mk

$(LIBDIR)/main.mk:
ifneq (,$(shell grep "path *= *$(LIBDIR)" .gitmodules 2>/dev/null))
	git submodule sync
	git submodule update $(CLONE_ARGS) --init
else
	git clone -q --depth 10 $(CLONE_ARGS) \
	    -b main https://github.com/martinthomson/i-d-template $(LIBDIR)
endif

$(drafts_xml): cddl/top/top-autogen.cddl

cddl/top/top-autogen.cddl: ; $(MAKE) -C cddl check

clean:: ; $(MAKE) -C cddl clean
