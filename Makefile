#===============================================================================
#		Makefile for qytdl.py
#		PyQt5 frontend to Youtube-DL
#===============================================================================

PREFIX=/usr
SRC=src
DOC=doc
ICONS=data/icons
DESKTOP_FILE=qytdl.desktop
INSTALL_PATH=$(PREFIX)/share/qytdl
DESKTOP_PATH=$(PREFIX)/share/applications
OUTPUTDIR=$(PREFIX)/bin
OUTPUT=qytdl
DOCPATH=$(PREFIX)/share/doc/qytdl
LICENSEPATH=$(PREFIX)/share/licenses/qytdl

install:
	install $(SRC)/*.py -D -t $(INSTALL_PATH)/src
	install $(ICONS)/*.png -D -t $(INSTALL_PATH)/data/icons/
	install $(DESKTOP_FILE) -D $(DESKTOP_PATH)/$(DESKTOP_FILE)
	install README -D $(DOCPATH)/README
	install $(DOC)/CHANGES -D $(DOCPATH)/CHANGES
	install $(DOC)/LICENSE -D $(LICENSEPATH)/LICENSE
	install qytdl.sh -D $(OUTPUTDIR)/$(OUTPUT)

uninstall:
	rm -f $(OUTPUTDIR)/$(OUTPUT)
	rm -r $(INSTALL_PATH)
	rm $(DESKTOP_PATH)/$(DESKTOP_FILE)
	rm -r $(DOCPATH)
	rm -r $(LICENSEPATH)
