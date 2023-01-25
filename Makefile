PREFIX ?= /usr/local
MAN_PREFIX ?= ${PREFIX}/man

all:
# Intentionally empty


install:
	install -d ${PREFIX}/bin
	install -c -m 555 try_repeat ${PREFIX}/bin
	install -d ${MAN_PREFIX}/man1
	install -c -m 444 try_repeat.1 ${MAN_PREFIX}/man1/try_repeat.1


clean:
# Intentionally empty


distrib:
	@read v?'try_repeat version: '; mkdir try_repeat-$$v; \
      cp try_repeat try_repeat.1 try_repeat-$$v; \
	  cp Makefile.try_repeat try_repeat-$$v/Makefile; \
	  tar cfz try_repeat-$$v.tar.gz try_repeat-$$v; \
	  rm -rf try_repeat-$$v
