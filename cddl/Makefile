.DEFAULT_GOAL := check
MAKECMDGOALS ?= $(.DEFAULT_GOAL)

SUBDIRS := platform
SUBDIRS += realm
SUBDIRS += da-eat
SUBDIRS += da-token
SUBDIRS += top

$(MAKECMDGOALS): ; for d in $(SUBDIRS) ; do $(MAKE) -C $$d $@ ; done
