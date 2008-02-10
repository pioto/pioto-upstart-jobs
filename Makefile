all:
	$(MAKE) -C base all
	$(MAKE) -C udev all

install:
	$(MAKE) -C base install
	$(MAKE) -C udev install
