#!/bin/bash
VERSION=7.31.0
FILENAME=curl-${VERSION}.tar.bz2
URL=http://curl.haxx.se/download/${FILENAME}
wget -c ${URL}
tar xjvf ${FILENAME}
cd curl-${VERSION}

./configure \
	--with-ssl \

make
