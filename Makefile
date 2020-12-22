all: release

RUNTIME_ROOT = ../runtime
DOCS_ROOT = $(RUNTIME_ROOT)/documentation

UWE_COMMAND_DOCS = alias build clean docs lang new publish server sync task 
UPM_COMMAND_DOCS = lint pack publish
UVM_COMMAND_DOCS = install latest list prune remove runtime uninstall update use

clean:
	@rm -rf ./build

site:
	@uwe

release: help
	@uwe --release

dist:
	@uwe --release --profile=dist
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

docs:
	@uwe --release --profile=docs
	@rm -rf $(DOCS_ROOT)/docs
	@cp -rf build/docs $(DOCS_ROOT)
	@rm $(DOCS_ROOT)/docs/files
	@(cd $(RUNTIME_ROOT) && git add . && git commit -m "Update docs." && git push origin master)

.PHONY: all help site release
