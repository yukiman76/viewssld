AC_PREREQ(2.57)
AC_INIT(viewssld, 0.7.0, plashchynski@gmail.com)
AC_CONFIG_SRCDIR([src/viewssld.c])

AC_CANONICAL_TARGET
AM_INIT_AUTOMAKE

AC_PROG_INSTALL
AC_PROG_CC

if test -d "$srcdir/libdssl"; then
    AC_CONFIG_SUBDIRS([libdssl])
    DSSL_DIR="libdssl"
    AC_SUBST(DSSL_DIR)
    DSSL_LDADD="../libdssl/src/.libs/libdssl.a"
    AC_SUBST(DSSL_LDADD)
    # make sure libhtp is added to the includes
    CPPFLAGS="-I${srcdir}/../libdssl/src/ ${CPPFLAGS}"
else
    echo "  ERROR: libdssl directory not found."
    exit 1
fi

LDFLAGS="$LDFLAGS -lpcap -lssl -lnet"

AC_HEADER_STDC
AC_HEADER_SYS_WAIT
AC_CHECK_HEADERS([arpa/inet.h netinet/in.h stdlib.h string.h sys/ioctl.h sys/socket.h syslog.h unistd.h])
AC_OUTPUT(Makefile src/Makefile doc/Makefile distribute.sh,[chmod +x distribute.sh],)
AC_CHECK_HEADER([pcap.h],,[AC_MSG_ERROR([libpcap header file not found. Install libpcap-dev package.])])
AC_CHECK_HEADER([openssl/ssl.h],,[AC_MSG_ERROR([libssl header file not found. Install libssl-dev package.])])
AC_CHECK_HEADER([zlib.h],,[AC_MSG_ERROR([zlib header file not found. Install zlib1g-dev package.])])
#AC_CHECK_HEADER([dssl/sslcap.h],,[AC_MSG_ERROR([libdssl header file not found. https://github.com/downloads/plashchynski/viewssld/libdssl-2.1.1.tar.gz])])
AC_CHECK_HEADER([libnet.h],,[AC_MSG_ERROR([libnet header file not found. Install libnet-dev package.])])
