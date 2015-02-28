PREFIX		:= vala-0.0.1dev
ARCHIVE		:= $(PREFIX).dap

all:
	git archive --format=tar.gz --prefix=$(PREFIX)/ --output=$(ARCHIVE) HEAD
	da pkg lint $(ARCHIVE)
