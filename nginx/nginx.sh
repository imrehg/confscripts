NVER=1.7.2
PAGESPEED=1.8.31.4-beta
wget -c http://nginx.org/download/nginx-$NVER.tar.gz
tar xzf nginx-$NVER.tar.gz
cd nginx-$NVER
./configure \
	--prefix=/usr \
	--pid-path=/var/run/nginx.pid \
	--sbin-path=/usr/sbin/nginx \
	--conf-path=/etc/nginx/nginx.conf \
	--lock-path=/var/lock/nginx.lock \
	--error-log-path=/var/log/nginx/error.log \
	--user=web \
	--group=www-data \
	--with-http_ssl_module \
	--with-http_gzip_static_module \
	--with-http_stub_status_module \
	--with-http_secure_link_module \
	--with-http_spdy_module \
	--http-fastcgi-temp-path=/var/tmp/nginx/fcgi/ \
	--http-scgi-temp-path=/var/tmp/nginx/scgi/ \
	--http-uwsgi-temp-path=/var/tmp/nginx/uwsgi/ \
	--with-ld-opt="-L/usr/local/ssl/lib -Wl,-rpath,/usr/local/ssl/lib -lssl -lcrypto -ldl -lz" \
	--with-cc-opt="-I/usr/local/include -I/usr/local/ssl/include -I/usr/include" \
	--add-module=../../ngx_pagespeed/ngx_pagespeed-${PAGESPEED}

make
