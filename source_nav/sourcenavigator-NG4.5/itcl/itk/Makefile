# Makefile.in --
#
#	This file is a Makefile for Sample TEA Extension.  If it has the name
#	"Makefile.in" then it is a template for a Makefile;  to generate the
#	actual Makefile, run "./configure", which is a configuration script
#	generated by the "autoconf" program (constructs like "@foo@" will get
#	replaced in the actual Makefile.
#
# Copyright (c) 1999 Scriptics Corporation.
#
# See the file "license.terms" for information on usage and redistribution
# of this file, and for a DISCLAIMER OF ALL WARRANTIES.
#
# RCS: @(#) $Id: Makefile.in 717 2009-01-21 15:39:08Z freequaos $

#========================================================================
# Edit the following few lines when writing a new extension
#========================================================================

#========================================================================
# Change the name of the variable "exampleA_LIB_FILE" to match the one
# used in the configure script.  This is the parameterized name of the
# library that we are building.
#========================================================================

lib_BINARIES=$(itk_LIB_FILE) $(itkstub_LIB_FILE)
BINARIES=$(lib_BINARIES)

#========================================================================
# Enumerate the names of the source files included in this package.
# This will be used when a dist target is added to the Makefile.
#========================================================================

WIN_DIR=$(srcdir)/win
UNIX_DIR=$(srcdir)/unix
GENERIC_DIR=$(srcdir)/generic
PLATFORM_DIR=$(UNIX_DIR)

WIN_SOURCES=$(PLATFORM_DIR)/tclAppInit.c \
	$(PLATFORM_DIR)/dllEntryPoint.c
UNIX_SOURCES=$(PLATFORM_DIR)/tclAppInit.c
GENERIC_SOURCES = $(GENERIC_DIR)/itk_cmds.c \
	$(GENERIC_DIR)/itk_option.c \
	$(GENERIC_DIR)/itk_archetype.c \
	$(GENERIC_DIR)/itk_util.c \
	$(GENERIC_DIR)/itkStubInit.c \
	$(GENERIC_DIR)/itkStubLib.c 
PLATFORM_SOURCES = $(UNIX_SOURCES)
itk_SOURCES = $(PLATFORM_SOURCES) $(GENERIC_SOURCES)
SOURCES = $(itk_SOURCES)

#========================================================================
# Enumerate the names of the object files included in this package.
# These objects are created and linked into the final library.  In
# most cases these object files will correspond to the source files
# above.
#
#========================================================================

WIN_OBJECTS = dllEntryPoint.$(OBJEXT)
UNIX_OBJECTS =
GENERIC_OBJECTS = itk_cmds.$(OBJEXT) \
	itk_option.$(OBJEXT) \
	itk_archetype.$(OBJEXT) \
	itk_util.$(OBJEXT) \
	itkStubInit.$(OBJEXT) \
	itkStubLib.$(OBJEXT) 
PLATFORM_OBJECTS = $(UNIX_OBJECTS)
itk_OBJECTS = $(PLATFORM_OBJECTS) $(GENERIC_OBJECTS)
itkstub_OBJECTS = itkStubLib.$(OBJEXT)
OBJECTS = $(itk_OBJECTS) $(itkstub_OBJECTS)

#========================================================================
# The substitution of "exampleA_LIB_FILE" into the variable name below
# let's us refer to the objects for the library without knowing the name
# of the library in advance.  It also lets us use the "$@" variable in
# the rule for building the library, so we can refer to both the list of 
# objects and the library itself in a platform-independent manner.
#========================================================================

itk_LIB_FILE = libitk3.2.a
$(itk_LIB_FILE)_OBJECTS = $(itk_OBJECTS)

itkstub_LIB_FILE = libitkstub3.2.a
$(itkstub_LIB_FILE)_OBJECTS = $(itkstub_OBJECTS)

itclstub_LIB_FILE = libitclstub3.2.a

tkstub_LIB_SPEC = -L/opt/sourcenav/lib -ltkstub8.3${TCL_DBGX}

#========================================================================
# This is a list of header files to be installed
#========================================================================

GENERIC_HDRS= \
	$(srcdir)/generic/itk.h \
	$(srcdir)/generic/itkDecls.h

#========================================================================
# Add additional lines to handle any additional AC_SUBST cases that
# have been added to the configure script.
#========================================================================

SAMPLE_NEW_VAR=@SAMPLE_NEW_VAR@

# CYGNUS LOCAL
ITK_LIBRARY = ${prefix}/share/itk$(VERSION)
# END CYGNUS LOCAL

ITK_GENERIC_DIR_NATIVE = /home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/itcl/itk/generic
ITK_UNIX_DIR_NATIVE = /home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/itcl/itk/unix
ITK_WIN_DIR_NATIVE = /home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/itcl/itk/win

#========================================================================
# Nothing of the variables below this line need to be changed.  Please
# check the TARGETS section below to make sure the make targets are
# correct.
#========================================================================

SHELL = /bin/bash

srcdir = /home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/itcl/itk
top_srcdir = /home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/itcl/itk
prefix = /opt/sourcenav
exec_prefix = /opt/sourcenav

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/share/info
mandir = ${prefix}/share/man
includedir = ${prefix}/include
oldincludedir = /usr/include

DESTDIR =

pkgdatadir = $(datadir)/itk3.2
pkglibdir = $(libdir)/itk3.2
pkgincludedir = $(includedir)/itk3.2

top_builddir = .

# CYGNUS LOCAL
INSTALL = /usr/bin/install -c
# END CYGNUS LOCAL
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_FLAG =
transform = s,x,x,

NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :

PACKAGE = itk
VERSION = 3.2
CC = gcc
CFLAGS_DEBUG = -g
CFLAGS_DEFAULT = $(CFLAGS_OPTIMIZE)
CFLAGS_OPTIMIZE =  -D__NO_STRING_INLINES -D__NO_MATH_INLINES
CLEANFILES = 
EXEEXT = 
WINLIBPRE = 
WINLIBEXT = 
LDFLAGS_DEBUG = 
LDFLAGS_DEFAULT = $(LDFLAGS_OPTIMIZE)
LDFLAGS_OPTIMIZE = 
MAKE_LIB = ${STLIB_LD} $@ $($@_OBJECTS)
MAKE_SHARED_LIB = ${SHLIB_LD} -o $@ $($@_OBJECTS) ${SHLIB_LDFLAGS} ${SHLIB_LD_LIBS}
MAKE_STATIC_LIB = ${STLIB_LD} $@ $($@_OBJECTS)
OBJEXT = o
RANLIB = ranlib
SHLIB_CFLAGS = -fPIC
SHLIB_LD = gcc -pipe -shared
SHLIB_LDFLAGS = 
SHLIB_LD_LIBS = 
STLIB_LD = ${AR} cr
TCL_BIN_DIR = /home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/tcl/unix
TCL_DEFS = -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_UNISTD_H=1 -DHAVE_LIMITS_H=1 -DHAVE_GETCWD=1 -DHAVE_OPENDIR=1 -DHAVE_STRSTR=1 -DHAVE_STRTOL=1 -DHAVE_TMPNAM=1 -DHAVE_WAITPID=1 -DHAVE_UNISTD_H=1 -DHAVE_SYS_PARAM_H=1 -DHAVE_SYS_TIME_H=1 -DTIME_WITH_SYS_TIME=1 -DHAVE_STRUCT_TM_TM_ZONE=1 -DHAVE_TM_ZONE=1 -DHAVE_TM_GMTOFF=1 -DHAVE_TIMEZONE_VAR=1 -DHAVE_TIMEZONE_DECL=1 -DHAVE_STRUCT_STAT_ST_BLKSIZE=1 -DNEED_MATHERR=1 -DRETSIGTYPE=void -DHAVE_SIGNED_CHAR=1 -DHAVE_SYS_IOCTL_H=1 -DSTATIC_BUILD=1
TCL_EXTRA_CFLAGS = 
TCL_LD_FLAGS = -rdynamic
TCL_LIBS = -ldl  -lieee -lm
TCL_SHLIB_LD_LIBS = 
TCL_SRC_DIR = /home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/tcl
TCL_DBGX = 
TCL_STUB_LIB_FILE = libtclstub8.3${TCL_DBGX}.a
TCL_STUB_LIB_SPEC = -L/opt/sourcenav/lib -ltclstub8.3${TCL_DBGX}
TCL_TOOL_DIR_NATIVE = $(TCL_TOP_DIR_NATIVE)/tools
TCL_TOP_DIR_NATIVE = $(TCL_SRC_DIR)
TCL_UNIX_DIR_NATIVE = $(TCL_TOP_DIR_NATIVE)/unix
TCL_WIN_DIR_NATIVE = $(TCL_TOP_DIR_NATIVE)/win
INCLUDE_DIR_NATIVE = @INCLUDE_DIR_NATIVE@
TCL_BMAP_DIR_NATIVE = $(TCL_TOP_DIR_NATIVE)/bitmaps
TCL_PLATFORM_DIR_NATIVE = $(TCL_TOP_DIR_NATIVE)/unix
TCL_GENERIC_DIR_NATIVE = $(TCL_TOP_DIR_NATIVE)/generic
TK_TOP_DIR_NATIVE = $(TK_SRC_DIR)
TK_SRC_DIR = /home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/tk
TCLSH_PROG = @TCLSH_PROG@
WISH_PROG = @WISH_PROG@
TK_XINCLUDES = # no special path needed
TCL_INCLUDES = -I$(TCL_TOP_DIR_NATIVE)/generic -I$(TCL_TOP_DIR_NATIVE)/unix
TK_INCLUDES = -I$(TK_TOP_DIR_NATIVE)/generic -I$(TK_TOP_DIR_NATIVE)/unix
ITCL_INCLUDES = -I"/home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/itcl/itcl/generic"
ITK_INCLUDES = -I"/home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/itcl/itcl/generic" -I"/home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/itcl/itk/generic" -I"/home/srk/srk/vimconfig/source_nav/sourcenavigator-NG4.5/itcl/itk/unix" # no special path needed

AUTOCONF = autoconf

LDFLAGS = $(LDFLAGS_DEFAULT)

INCLUDES = -I$(TCL_TOP_DIR_NATIVE)/generic -I$(TCL_TOP_DIR_NATIVE)/unix -I$(TK_TOP_DIR_NATIVE)/generic -I$(TK_TOP_DIR_NATIVE)/unix $(ITK_INCLUDES)

EXTRA_CFLAGS = $(AC_FLAGS) $(PROTO_FLAGS) $(MEM_DEBUG_FLAGS) $(NO_DEPRECATED_FLAGS) $(TCL_EXTRA_CFLAGS)

DEFS = -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DVERSION=\"3.2\" -DSTATIC_BUILD=1 $(EXTRA_CFLAGS) -DITK_LIBRARY=\"$(ITK_LIBRARY)\"

ACLOCAL_M4 = $(srcdir)/aclocal.m4
mkinstalldirs = $(SHELL) $(top_srcdir)/../config/mkinstalldirs

CPPFLAGS = 
LIBS = 
AR = ar
CFLAGS = -g -O2 ${CFLAGS_DEFAULT} ${CFLAGS_WARNING}
COMPILE = $(CC) $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(LDFLAGS) -o $@

#========================================================================
# Start of user-definable TARGETS section
#========================================================================

#========================================================================
# TEA TARGETS.  Please note that the "libraries:" target refers to platform
# independent files, and the "binaries:" target inclues executable programs and
# platform-dependent libraries.  Modify these targets so that they install
# the various pieces of your package.  The make and install rules
# for the BINARIES that you specified above have already been done.
#========================================================================

all: binaries libraries doc

#========================================================================
# The binaries target builds executable programs, Windows .dll's, unix
# shared/static libraries, and any other platform-dependent files.
# The list of targets to build for "binaries:" is specified at the top
# of the Makefile, in the "BINARIES" variable.
#========================================================================

binaries: $(BINARIES)

libraries:

doc:

install: all install-binaries install-libraries

install-binaries: binaries install-lib-binaries install-bin-binaries

#========================================================================
# This rule installs platform-independent files, such as header files.
#========================================================================

install-libraries: libraries
	$(mkinstalldirs) $(DESTDIR)$(includedir)
	@echo "Installing header files in $(DESTDIR)$(includedir)"
	@for i in $(GENERIC_HDRS) ; do \
	    echo "Installing $$i" ; \
	    $(INSTALL_DATA) $$i $(DESTDIR)$(includedir) ; \
	done;
	@echo "Installing library files in $(DESTDIR)$(ITK_LIBRARY)"
	@for i in $(srcdir)/library/*.* $(srcdir)/library/tclIndex ; do \
	    echo "Installing $$i" ; \
	    $(INSTALL_DATA) $$i $(DESTDIR)$(ITK_LIBRARY) ; \
	done;

#========================================================================
# Install documentation.  Unix manpages should go in the $(mandir)
# directory.
#========================================================================

install-doc: doc
	$(mkinstalldirs) $(DESTDIR)$(mandir)/mann
	@echo "Installing man pages in $(DESTDIR)$(mandir)"
	@for i in $(srcdir)/doc/*.n; \
	    do \
	    echo "Installing $$i info $(DESTDIR)$(mandir)/mann"; \
	    $(INSTALL_DATA) $$i $(DESTDIR)$(mandir)/mann ; \
	    done

test: $(TCLSH_PROG)
	$(TCLSH_PROG) `echo $(srcdir)/tests/all.tcl` \
		-exedir `echo $(bindir)` $(TESTFLAGS)

depend:

#========================================================================
# Enumerate the names of the object files included in this package.
# These objects are created and linked into the final library.  In
# most cases these object files will correspond to the source files
# above.
#
# $(exampleA_LIB_FILE) should be listed as part of the BINARIES variable
# at the top of the Makefile.  That will ensure that this target is built
# when you run "make binaries".
#
# You shouldn't need to modify this target, except to change the package
# name from "exampleA" to your package's name.
#========================================================================

$(itk_LIB_FILE): $(itk_OBJECTS)
	-rm -f $(itk_LIB_FILE)
	${STLIB_LD} $@ $($@_OBJECTS)
	${RANLIB} $@

$(itkstub_LIB_FILE): $(itkstub_OBJECTS)
	-rm -f $(itkstub_LIB_FILE)
	${STLIB_LD} $@ $($@_OBJECTS)
	${RANLIB} $@

#========================================================================
# We need to enumerate the list of .c to .o lines here.
# Unfortunately, there does not seem to be any other way to do this
# in a Makefile-independent way.  We can't use VPATH because it picks up
# object files that may be located in the source directory.
#
# In the following lines, $(srcdir) refers to the toplevel directory
# containing your extension.  If your sources are in a subdirectory,
# you will have to modify the paths to reflect this:
#
# exampleA.$(OBJEXT): $(srcdir)/src/win/exampleA.c
# 	$(COMPILE) -c `echo $(srcdir)/src/win/exampleA.c` -o $@
#========================================================================

dllEntryPoint.$(OBJEXT): $(WIN_DIR)/dllEntryPoint.c
	$(COMPILE) -c `echo $(WIN_DIR)/dllEntryPoint.c` -o $@

tclAppInit.$(OBJEXT): $(PLATFORM_DIR)/tclAppInit.c
	$(COMPILE) -c `echo $(PLATFORM_DIR)/tclAppInit.c` -o $@

itkStubInit.$(OBJEXT): $(GENERIC_DIR)/itkStubInit.c
	$(COMPILE) -c `echo $(GENERIC_DIR)/itkStubInit.c` -o $@

itkStubLib.$(OBJEXT): $(GENERIC_DIR)/itkStubLib.c
	$(COMPILE) -c `echo $(GENERIC_DIR)/itkStubLib.c` -o $@

itk_cmds.$(OBJEXT): $(GENERIC_DIR)/itk_cmds.c
	$(COMPILE) -c `echo $(GENERIC_DIR)/itk_cmds.c` -o $@

itk_option.$(OBJEXT): $(GENERIC_DIR)/itk_option.c
	$(COMPILE) -c `echo $(GENERIC_DIR)/itk_option.c` -o $@

itk_archetype.$(OBJEXT): $(GENERIC_DIR)/itk_archetype.c
	$(COMPILE) -c `echo $(GENERIC_DIR)/itk_archetype.c` -o $@

itk_util.$(OBJEXT): $(GENERIC_DIR)/itk_util.c
	$(COMPILE) -c `echo $(GENERIC_DIR)/itk_util.c` -o $@


#========================================================================
# End of user-definable section
#========================================================================

#========================================================================
# Don't modify the file to clean here.  Instead, set the "CLEANFILES"
# variable in configure.in
#========================================================================

clean:  
	-test -z "$(BINARIES)" || rm -f $(BINARIES)
	-rm -f *.o core *.core
	-rm -f *.$(OBJEXT)
	-test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean: clean
	-rm -f *.tab.c
	-rm -f Makefile $(CONFIG_CLEAN_FILES)
	-rm -f config.cache config.log stamp-h stamp-h[0-9]*
	-rm -f config.status itkConfig.sh pkgIndex.tcl

#========================================================================
# Install binary object libraries.  On Windows this includes both .dll and
# .lib files.  Because the .lib files are not explicitly listed anywhere,
# we need to deduce their existence from the .dll file of the same name.
# Additionally, the .dll files go into the bin directory, but the .lib
# files go into the lib directory.  On Unix platforms, all library files
# go into the lib directory and have ranlib run on them after install.
#
# You should not have to modify this target.
#========================================================================

install-lib-binaries: installdirs
	@list='$(lib_BINARIES)'; for p in $$list; do \
	  if test -f $$p; then \
	    ext=`echo $$p|sed -e "s/.*\.//"`; \
	    if test "x$$ext" = "xdll"; then \
	        echo " $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/$$p"; \
	        $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/$$p; \
		lib=$(WINLIBPRE)`basename $$p|sed -e 's/.[^.]*$$//'`$(WINLIBEXT); \
		if test -f $$lib; then \
		    echo " $(INSTALL_PROGRAM) $$lib $(DESTDIR)$(libdir)/$$lib"; \
	            $(INSTALL_PROGRAM) $$lib $(DESTDIR)$(libdir)/$$lib; \
		fi; \
	    else \
		echo " $(INSTALL_PROGRAM) $$p $(DESTDIR)$(libdir)/$$p"; \
	        $(INSTALL_PROGRAM) $$p $(DESTDIR)$(libdir)/$$p; \
	    fi; \
	  else :; fi; \
	done
	@list='$(lib_BINARIES)'; for p in $$list; do \
	  if test -f $$p && test "x$(WINLIBEXT)" = "x"; then \
	    echo " $(RANLIB) $(DESTDIR)$(libdir)/$$p"; \
	    $(RANLIB) $(DESTDIR)$(libdir)/$$p; \
	  else :; fi; \
	done
	$(INSTALL_DATA) pkgIndex.tcl $(DESTDIR)$(pkglibdir)

#========================================================================
# Install binary executables (e.g. .exe files)
#
# You should not have to modify this target.
#========================================================================

install-bin-binaries: installdirs
	@list='$(bin_BINARIES)'; for p in $$list; do \
	  if test -f $$p; then \
	    echo " $(INSTALL_DATA) $$p $(DESTDIR)$(bindir)/$$p"; \
	    $(INSTALL_DATA) $$p $(DESTDIR)$(bindir)/$$p; \
	  else :; fi; \
	done

.SUFFIXES: .c .o .obj

Makefile: $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) \
	  && CONFIG_FILES=$@ CONFIG_HEADERS= $(SHELL) ./config.status

#config.status: $(srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
#	$(SHELL) ./config.status --recheck
#$(srcdir)/configure: $(srcdir)/configure.in $(ACLOCAL_M4) $(CONFIGURE_DEPENDENCIES)
#	cd $(srcdir) && $(AUTOCONF)


uninstall-binaries:
	@$(NORMAL_UNINSTALL)
	list='$(BINARIES)'; for p in $$list; do \
	  rm -f $(DESTDIR)$(libdir)/$$p; \
	done

installdirs:
	$(mkinstalldirs)  $(DESTDIR)$(libdir)
	$(mkinstalldirs)  $(DESTDIR)$(bindir)
	$(mkinstalldirs)  $(DESTDIR)$(pkglibdir)
	$(mkinstalldirs)  $(DESTDIR)$(ITK_LIBRARY)

.PHONY: all binaries clean depend distclean doc install installdirs \
libraries test

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
