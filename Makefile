#
# SPDX-License-Identifier: GPL-3.0-or-later

PREFIX ?= /usr/local
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/pub
DATA_DIR=$(DESTDIR)$(PREFIX)/share/pub
BIN_DIR=$(DESTDIR)$(PREFIX)/bin

DOC_FILES=$(wildcard *.rst)
SCRIPT_FILES=$(wildcard pub/*)

all:

check: shellcheck

shellcheck:
	shellcheck -s bash $(SCRIPT_FILES)

install: install-pub install-doc

install-doc:

	install -vDm 644 $(DOC_FILES) -t $(DOC_DIR)

install-pub:

	install -vdm 755 "$(BIN_DIR)"
	install -vDm 755 pub/pub "$(BIN_DIR)"

.PHONY: check install install-doc install-pub shellcheck
