bin_PROGRAMS = NAME

NAME_SOURCES = \
	config.vapi \
	main.vala

NAME_CFLAGS = \
	-DDATA_DIRECTORY=\"$(datadir)/NAME\" \
	$(NAME_U_CFLAGS)

NAME_VALAFLAGS = \
	--pkg gtk+-3.0 \
	--target-glib $(GLIB_REQUIRED)

NAME_LDADD = \
	$(NAME_U_LIBS)

