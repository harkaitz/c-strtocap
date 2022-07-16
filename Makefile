DESTDIR         =
PREFIX          =/usr/local
CC              =gcc
CFLAGS          =-Wall -g
PROG_CAPITALIZE =tools/capitalize$(EXE)
PROG_TOLOWER    =tools/tolower$(EXE)
PROG_TOUPPER    =tools/toupper$(EXE)
PROGS           =$(PROG_CAPITALIZE) $(PROG_TOLOWER) $(PROG_TOUPPER)

## ----------------------------------------------------
all: $(PROGS)
clean:
	rm -f $(PROGS)
install: $(PROGS)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(PREFIX)/include/str
	cp $(PROGS) $(DESTDIR)$(PREFIX)/bin
	cp strtocap.h $(DESTDIR)$(PREFIX)/include/str

## ----------------------------------------------------
$(PROG_CAPITALIZE): tools/capitalize.c strtocap.h
	$(CC) -o $@ tools/capitalize.c $(CFLAGS)
$(PROG_TOLOWER): tools/tolower.c strtocap.h
	$(CC) -o $@ tools/tolower.c $(CFLAGS)
$(PROG_TOUPPER): tools/toupper.c strtocap.h
	$(CC) -o $@ tools/toupper.c $(CFLAGS)

## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/c-strtocap
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/c-strtocap
endif
## -- license --
