all: release

RUNTIME_ROOT = ../runtime
DOCS_ROOT = $(RUNTIME_ROOT)/documentation
COMMAND_DOCS = book build docs fetch init publish run site upgrade

clean:
	@rm -rf ./build

site:
	@ht

release: help
	@ht --release

dist:
	@ht --release --profile=dist
	@rm -f build/uwe-preview.zip
	@(cd build && zip -r uwe-preview.zip dist/*)

help:
	for cmd in $(COMMAND_DOCS); do \
		ht help $$cmd > site/includes/help/$$cmd.txt; \
	done;

docs:
	@ht --release --profile=docs
	@rm -rf $(DOCS_ROOT)/docs
	@cp -rf build/docs $(DOCS_ROOT)
	@rm $(DOCS_ROOT)/docs/files
	@(cd $(RUNTIME_ROOT) && git add . && git commit -m "Update docs." && git push origin master)

.PHONY: all help site release
