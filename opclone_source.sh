git clone -b openwrt-21.02 https://github.com/openwrt/openwrt.git
pushd "openwrt"; git checkout v21.02.0 && ./scripts/feeds update -a; ./scripts/feeds install -a; popd
