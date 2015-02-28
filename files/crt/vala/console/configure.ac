AC_INIT([NAME],[0.0])
AM_INIT_AUTOMAKE

AM_PROG_VALAC([0.24])
AM_PROG_CC_C_O

dnl ###########################################################################
dnl Dependencies
dnl ###########################################################################

GLIB_REQUIRED=2.0.0
GOBJ_REQUIRED=2.0.0

PKG_CHECK_MODULES(NAME_U, [
  glib-2.0 >= $GLIB_REQUIRED
  gobject-2.0 >= $GOBJ_REQUIRED
])

AC_SUBST([GLIB_REQUIRED])

dnl ###########################################################################
dnl Files to generate
dnl ###########################################################################

AC_CONFIG_FILES([
Makefile
src/Makefile
])
AC_OUTPUT
