#!/bin/bash

# add network plugin

echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default
echo 'src-git vssr https://github.com/jerrykuku/luci-app-vssr' >>feeds.conf.default