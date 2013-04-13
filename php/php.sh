PVER=5.3.24
wget -c http://www.php.net/get/php-${PVER}.tar.bz2/from/nl1.php.net/mirror
tar xjf php-$PVER.tar.bz2
cd php-$PVER

./configure \
	--prefix=/opt/php5 \
	--with-config-file-path=/opt/php5/etc \
	--with-curl \
	--with-pear \
	--with-gd \
	--with-jpeg-dir \
	--with-png-dir \
	--with-zlib \
	--with-xpm-dir \
	--with-freetype-dir \
	--with-mcrypt \
	--with-mhash \
	--with-mysql \
	--with-mysqli \
	--with-pdo-mysql \
	--with-openssl \
	--with-xmlrpc \
	--with-xsl \
	--with-bz2 \
	--with-gettext \
	--with-fpm-user=web \
	--with-fpm-group=www-data \
	--enable-fpm \
	--enable-exif \
	--enable-wddx \
	--enable-zip \
	--enable-bcmath \
	--enable-calendar \
	--enable-ftp \
	--enable-mbstring \
	--enable-soap \
	--enable-sockets \
	--enable-sqlite-utf8 \
	--enable-shmop \
	--enable-dba \
	--enable-sysvmsg \
	--enable-sysvsem \
	--enable-sysvshm \

make
