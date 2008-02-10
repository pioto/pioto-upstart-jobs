JOBFILES = $(wildcard *.job)

all:

install: install-dirs $(JOBFILES:%=install-%)

install-dirs:
	install -d $(DESTDIR)/etc/event.d
	
install-%: % install-dirs
	install -m0644 $< $(DESTDIR)/etc/event.d/$(<:.job=)
