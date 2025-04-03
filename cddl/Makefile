.DEFAULT_GOAL := check
MAKECMDGOALS ?= $(.DEFAULT_GOAL)

SUBDIRS := platform
SUBDIRS += realm
ifdef DA_COEV
  SUBDIRS += da-coev
endif
SUBDIRS += top

$(MAKECMDGOALS): ; for d in $(SUBDIRS) ; do $(MAKE) -C $$d $@ ; done
