git clone https://github.com/coolsnowwolf/lede
pushd "lede"; ./scripts/feeds update -a; ./scripts/feeds install -a; popd
