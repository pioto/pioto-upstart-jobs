RULEFILES = $(wildcard *.rules)

all:

clean:

install: install-dirs $(RULEFILES:%=install-%)

install-dirs:
	install -d $(DESTDIR)/etc/udev/rules.d
	
install-%: % install-dirs
	install -m0644 $< $(DESTDIR)/etc/udev/rules.d/$<

dist:
	mkdir ../$(PACKAGE)-$(VERSION)/udev
	cp $(RULEFILES) Makefile ../$(PACKAGE)-$(VERSION)/udev
