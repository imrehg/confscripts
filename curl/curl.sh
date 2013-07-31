#!/bin/bash
VERSION=7.31.0
FILENAME=curl-${VERSION}.tar.bz2
URL=http://curl.haxx.se/download/${FILENAME}
wget -c ${URL}
tar xjvf ${FILENAME}
cd curl-${VERSION}

./configure \
	--prefix=/usr \
	--mandir=/usr/share/man \
	--disable-dependency-tracking \
	--disable-ldap \
	--disable-ldaps \
	--enable-manual \
	--enable-versioned-symbols \
	--enable-threaded-resolver \
	--without-libidn \
	--with-random=/dev/urandom \
	--with-libssh2 \
	--with-ssl \

make
