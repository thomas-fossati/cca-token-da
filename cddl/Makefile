.DEFAULT_GOAL := all
MAKECMDGOALS ?= $(.DEFAULT_GOAL)

SUBDIRS := platform
SUBDIRS += realm
SUBDIRS += top

$(MAKECMDGOALS): ; for d in $(SUBDIRS) ; do $(MAKE) -C $$d $@ ; done
