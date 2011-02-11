FVER=1.14.5
wget -c "http://ftp.debian.org/debian/pool/main/f/fakeroot/fakeroot_$FVER.orig.tar.bz2"
tar xjf fakeroot_$FVER.orig.tar.bz2
cd fakeroot-$FVER
./configure --prefix=/usr --libdir=/usr/lib/libfakeroot \
	 --disable-static --with-ipc=sysv
make
