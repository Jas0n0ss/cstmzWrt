#!/bin/bash

echo '--Build environments deploying--'
sleep 3
sudo apt update
sudo -E apt-get -qq install $(curl -fsSL https://is.gd/depends_ubuntu_2204)
sudo -E apt-get -qq install libfuse-dev
sudo -E apt-get -qq install rename
sudo -E apt-get -qq install time
sudo -E apt-get -qq autoremove --purge
sudo -E apt-get -qq clean
df -Th

echo '--clone source code--'
sleep 3
git clone --depth 1 https://github.com/coolsnowwolf/lede -b master
cd lede
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

echo '--update repository--'
sleep 3
./scripts/feeds update -a
./scripts/feeds install -a

echo '--import settings--'
sleep 3
rm .config
wget -O .config https://github.com/Jas0n0ss/cstmzWrt/blob/main/config/cr660x/cr660x_normal
wget -O target/linux/ramips/patches-5.4/102-mt7621-fix-cpu-clk-add-clkdev.patch https://raw.githubusercontent.com/Jas0n0ss/cstmzWrt/main/config/overclock.patch
echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default

mv cinfig/overclock.patch target/linux/ramips/patches-5.4/102-mt7621-fix-cpu-clk-add-clkdev.patch
make defconfig
make download -j$(nproc)
find dl -size -1024c -exec ls -l {} \;
find dl -size -1024c -exec rm -f {} \;

echo '--starting compiling--'
sleep 3
make -j$(nproc) V=s
