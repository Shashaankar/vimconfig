# This entire file is CYGNUS LOCAL.
# Minimal top-level Makefile.  Just pass everything to the $(CONFIGDIR)
# subdir.
# From tcl/Makefile.in, by Tom Tromey <tromey@cygnus.com>

CONFIGDIR=unix


SHELL = /bin/bash
SRC_DIR = .

CFLAGS = @CFLAGS@



all install test install-binaries install-libraries install-minimal:
	@cd $(CONFIGDIR) && $(MAKE) $@

mostlyclean-recursive clean-recursive distclean-recursive \
maintainer-clean-recursive:
	@cd $(CONFIGDIR) && $(MAKE) `echo $@ | sed 's/-recursive//'`

configure:
	cd $(SRC_DIR) && autoconf

mostlyclean: mostlyclean-recursive

clean: clean-recursive

distclean-local:
	rm -f Makefile config.status config.cache config.log tixConfig.sh

distclean: distclean-recursive distclean-local

maintainer-clean: distclean-local maintainer-clean-recursive

check:
	cd $(CONFIGDIR) && $(MAKE) tests

install-info info installcheck:

Makefile: Makefile.in config.status
	CONFIG_FILES=Makefile CONFIG_HEADERS= $(SHELL) ./config.status

config.status: configure
	$(SHELL) config.status --recheck
