VER=2.77
BASENAME=transmission-${VER}
SOURCE=http://mirrors.m0k.org/transmission/files/$BASENAME.tar.xz
wget -c $SOURCE

tar xJvf $BASENAME.tar.xz
cd $BASENAME

./configure \
	--prefix=/usr \
	--enable-utp \

make
