UWE_COMMAND_DOCS = build clean dev docs lang new publish server sync task
UPM_COMMAND_DOCS = install info remove lint pack publish update
UVM_COMMAND_DOCS = install list remove uninstall update use prune

all: help dist

dist:
	@uwe build --profile=dist
	@rm -f build/uwe-preview.zip
	@(cd build && zip -r uwe-preview.zip dist/*)

help-uwe:
	mkdir -p site/includes/help/uwe
	for cmd in $(UWE_COMMAND_DOCS); do \
		uwe help $$cmd > site/includes/help/uwe/$$cmd.txt; \
	done;

help-upm:
	mkdir -p site/includes/help/upm
	for cmd in $(UPM_COMMAND_DOCS); do \
		upm help $$cmd > site/includes/help/upm/$$cmd.txt; \
	done;

help-uvm:
	mkdir -p site/includes/help/uvm
	for cmd in $(UVM_COMMAND_DOCS); do \
		uvm help $$cmd > site/includes/help/uvm/$$cmd.txt; \
	done;

help: help-uwe help-upm help-uvm

.PHONY: all help dist 
