GITVER=1.8.3.1
wget -c http://kernel.org/pub/software/scm/git/git-$GITVER.tar.bz2
tar xjvf git-$GITVER.tar.bz2
cd git-$GITVER

./configure \
	--prefix=/usr \

make
echo "DONE"
