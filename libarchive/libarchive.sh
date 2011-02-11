LVER=2.8.4
wget -c "http://libarchive.googlecode.com/files/libarchive-$LVER.tar.gz"
tar xzf libarchive-$LVER.tar.gz
cd libarchive-$LVER
./configure --prefix=/usr
make
