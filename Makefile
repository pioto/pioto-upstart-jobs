PACKAGE = pioto-upstart-jobs
VERSION = 0.1

all:
	$(MAKE) -C base all
	$(MAKE) -C udev all

clean:
	rm -rf $(PACKAGE)-$(VERSION)/
	rm -f $(PACKAGE)-$(VERSION).tar.bz2
	$(MAKE) -C base clean
	$(MAKE) -C udev clean

install:
	$(MAKE) -C base install
	$(MAKE) -C udev install

dist:
	mkdir $(PACKAGE)-$(VERSION)
	cp Makefile COPYING README $(PACKAGE)-$(VERSION)
	$(MAKE) PACKAGE=$(PACKAGE) VERSION=$(VERSION) -C base dist
	$(MAKE) PACKAGE=$(PACKAGE) VERSION=$(VERSION) -C udev dist
	tar cjvf $(PACKAGE)-$(VERSION).tar.bz2 $(PACKAGE)-$(VERSION)/
	rm -rf $(PACKAGE)-$(VERSION)/
