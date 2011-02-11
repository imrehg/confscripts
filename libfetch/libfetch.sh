LVER=2.33
wget -c "ftp://ftp.archlinux.org/other/libfetch/libfetch-$LVER.tar.gz"
wget -c "http://projects.archlinux.org/svntogit/packages.git/plain/libfetch/trunk/Makefile"
tar xzf libfetch-$LVER.tar.gz
cp Makefile libfetch-$LVER/
cd libfetch-$LVER
make
