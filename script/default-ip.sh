#!/bin/bash

# set default manage ip addr
sed -i 's/192.168.1.1/192.168.3.1/g' /workdir/openwrt/package/base-files/files/bin/config_generate

# set default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' /workdir/openwrt/feeds/luci/collections/luci/Makefile

# ssr-plus build bug fix
# sed -i 's/luci-lib-ipkg/luci-base/g' package/feeds/kenzo/luci-app-ssr-plus/Makefile
