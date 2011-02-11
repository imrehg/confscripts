PACVER=3.4.3
wget -c ftp://ftp.archlinux.org/other/pacman/pacman-$PACVER.tar.gz
tar xzf pacman-$PACVER.tar.gz
cd pacman-$PACVER
sudo yum install openssl-devel
./configure --prefix=/usr
make
