NVER=0.9.4
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
	--http-fastcgi-temp-path=/var/tmp/nginx/fcgi/ \
	--http-scgi-temp-path=/var/tmp/nginx/scgi/ \
	--http-uwsgi-temp-path=/var/tmp/nginx/uwsgi/ \

make
