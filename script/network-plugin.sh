#!/bin/bash

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >> /workdir/openwrt/feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> /workdir/openwrt/feeds.conf.default
# echo 'src-git vssr https://github.com/jerrykuku/luci-app-vssr' >>feeds.conf.default
# download theme
rm -rf package/lean/luci-theme-argon
# for openwrt offical
git clone -b master https://github.com/jerrykuku/luci-theme-argon.git /workdir/openwrt/package/luci-theme-argon
# for lede 
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git /workdir/openwrt/package/luci-theme-argon
####
# git clone -b 18.06 https://github.com/r1172464137/luci-theme-edge.git /workdir/openwrt/package/luci-theme-edge

# 
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#sed -i '$a src-git small8 https://github.com/kenzok8/small-package' feeds.conf.default
