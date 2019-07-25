# -- begin optional - required only for gperf 3.1 or newer --
curl -O https://gist.githubusercontent.com/KamilSzczygiel/d16a5d88075939578f7bd8fadd0907aa/raw/1928495cfb6a6141365d545a23d66203222d28c0/kconfig-frontends.patch
patch -p1 -i kconfig-frontends.patch
autoreconf -fi
# -- end optional --
./configure --enable-conf --enable-mconf --disable-shared --enable-static
make
sudo make install
sudo strip /usr/local/bin/kconfig-*
