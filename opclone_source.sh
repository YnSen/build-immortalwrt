git clone -b openwrt-21.02 https://github.com/openwrt/openwrt.git
pushd "openwrt"
git checkout v21.02.0
sed -i 's/src-git luci/#src-git luci/g' feeds.conf.default
sed -i 's/src-git packages/#src-git packages/g' feeds.conf.default
sed -i '$a src-git luci https://github.com/immortalwrt/luci.git^31a0e8a'feeds.conf.default
sed -i '$a src-git packages https://github.com/immortalwrt/packages.git^7ce5631 feeds.conf.default
./scripts/feeds update -a; ./scripts/feeds install -a
popd
