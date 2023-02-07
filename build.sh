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
bash -c "$(https://github.com/runoo6/Xiaomi-CR660x-Actions/raw/main/diy-part1.sh)"

echo '--update repository--'
sleep 3
./scripts/feeds update -a
./scripts/feeds install -a

echo '--import settings--'
sleep 3
rm .config
wget https://github.com/runoo6/Xiaomi-CR660x-Actions/raw/main/.config
wget https://github.com/runoo6/Xiaomi-CR660x-Actions/raw/main/overclock.patch
bash -c "$(https://github.com/runoo6/Xiaomi-CR660x-Actions/blob/main/diy-part2.sh)"
mv overclock.patch target/linux/ramips/patches-5.4/102-mt7621-fix-cpu-clk-add-clkdev.patch
make defconfig
make download -j8
find dl -size -1024c -exec ls -l {} \;
find dl -size -1024c -exec rm -f {} \;

echo '--starting compiling--'
sleep 3
make -j$(nproc)