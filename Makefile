# Makefile for sortPhotos.sh

# Variables
SCRIPT = sortPhotos.sh
DESTINATION = /usr/local/bin  # Change this to the desired installation location

# Targets
install:
	chmod +x $(SCRIPT)
	cp $(SCRIPT) $(DESTINATION)

uninstall:
	rm -f $(DESTINATION)/$(SCRIPT)

.PHONY: install uninstall
