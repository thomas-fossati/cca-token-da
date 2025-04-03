.DEFAULT_GOAL := check
MAKECMDGOALS ?= $(.DEFAULT_GOAL)

SUBDIRS := platform
SUBDIRS += realm
SUBDIRS += da-coev
SUBDIRS += da-eat
SUBDIRS += top

$(MAKECMDGOALS): ; for d in $(SUBDIRS) ; do $(MAKE) -C $$d $@ ; done
