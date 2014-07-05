VER=1.8.31.4
GHVER=${VER}-beta

wget -c https://github.com/pagespeed/ngx_pagespeed/archive/v${GHVER}.zip
unzip v${GHVER}.zip

cd ngx_pagespeed-${GHVER}/
wget https://dl.google.com/dl/page-speed/psol/${VER}.tar.gz
tar -xzvf ${VER}.tar.gz
