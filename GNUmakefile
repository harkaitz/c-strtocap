PROJECT=c-strtocap
VERSION=1.0.0
DESTDIR=
PREFIX =/usr/local
CC     =gcc -pedantic-errors -std=c99 -Wall
PROGS  =capitalize$(EXE) tolower$(EXE) toupper$(EXE)
##
all: $(PROGS)
clean:
	rm -f $(PROGS)
install: $(PROGS)
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(PREFIX)/include/str
	cp $(PROGS) $(DESTDIR)$(PREFIX)/bin
	cp strtocap.h $(DESTDIR)$(PREFIX)/include/str
##
capitalize$(EXE): tools/capitalize.c strtocap.h
	$(CC) -o $@ tools/capitalize.c $(CFLAGS)
tolower$(EXE): tools/tolower.c strtocap.h
	$(CC) -o $@ tools/tolower.c $(CFLAGS)
toupper$(EXE): tools/toupper.c strtocap.h
	$(CC) -o $@ tools/toupper.c $(CFLAGS)
## -- BLOCK:license --
install: install-license
install-license: 
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp LICENSE  $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
