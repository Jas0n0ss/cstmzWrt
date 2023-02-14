#!/bin/bash

# add network plugin
FEEDS_FILE=feeds.conf.default

cat >>${FEEDS_FILE}<<EOF
src-git helloworld https://github.com/fw876/helloworld
src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages
src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;luci
src-git vssr https://github.com/jerrykuku/luci-app-vssr
EOF
