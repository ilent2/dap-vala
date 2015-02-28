NAME		:= $(shell sed -n 's/^package_name: *//p' meta.yaml)
VERSION	:= $(shell sed -n 's/^version: *//p' meta.yaml)

PREFIX	:= $(NAME)-$(VERSION)
ARCHIVE	:= $(PREFIX).dap

GIT_HEAD	:= .git/$(shell sed -n 's/^ref: *//p' .git/HEAD)

.PHONY: all lint
all: $(ARCHIVE) lint

$(ARCHIVE): $(GIT_HEAD)
	git archive --format=tar.gz --prefix=$(PREFIX)/ --output=$@ HEAD

lint: $(ARCHIVE)
	da pkg lint $<

