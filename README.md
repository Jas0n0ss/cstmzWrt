# cstmzWrt

基于 [OpenWrt-Rpi](https://github.com/SuLingGG/OpenWrt-Rpi)

- 更改了默认后台`10.0.0.1`为 `http://192.168.3.1`, 用户名 `root`密码 `Huawei2#$`
- 添加 `passwall` `hello-world` `vssr`
- 默认主题 `bootstrap` 主题

## 项目介绍

1. 提供适配于 树莓派全系、Rockchip 平台、ipq40xx 平台以及 x86 平台设备的 OpenWrt 固件
2. 包含丰富的 OpenWrt 原版 LuCI 插件及社区 LuCI 插件
3. 固件跟随源码更新自动编译，确保获得最新体验
4. 预配置本地 kmod 软件源，远离 kmod 依赖冲突
5. 集成绝大多数有线、无线、3G / 4G 网卡驱动，无需额外安装
6. 预置最新版 Clash 核心、预置 oh-my-zsh，最大程度减少配置成本
7. 提供全格式固件 / 文件 (ext4/squashfs/ubi/initramfs/rootfs)
8. 在 [OpenWrt-Rpi](https://github.com/SuLingGG/OpenWrt-Rpi) 的基础上添加了第三方网络插件`passwall`，`hello-world`
9. 修改默认的管理后台地址为 `http://192.168.3.1`, 用户名 `root`密码 `Huawei12#$`

在线自定义编译固件： https://supes.top/ 

## 文档

- [OpenWrt-Rpi](https://github.com/SuLingGG/OpenWrt-Rpi) 相关文档介绍：[https://doc.openwrt.cc/2-OpenWrt-Rpi](https://doc.openwrt.cc/2-OpenWrt-Rpi)

## 参阅

- OpenWrt 源码项目
  - [openwrt/openwrt](https://github.com/openwrt/openwrt/)
  - [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
  - [immortalwrt/immortalwrt](https://github.com/immortalwrt/immortalwrt)

- OpenWrt 构建项目
  - [openwrt/buildbot](https://git.openwrt.org/?p=buildbot.git;a=summary)
  - [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
  - [immortalwrt/opde](https://github.com/immortalwrt/opde)
  - [klever1988/nanopi-openwrt](https://github.com/klever1988/nanopi-openwrt)

- Action 项目
  - [ncipollo/release-action](https://github.com/ncipollo/release-action)
  - [mknejp/delete-release-assets](https://github.com/mknejp/delete-release-assets)
  - [GitRML/delete-workflow-runs](https://github.com/GitRML/delete-workflow-runs)
  - [easingthemes/ssh-deploy](https://github.com/easingthemes/ssh-deploy)
  - [easimon/maximize-build-space](https://github.com/easimon/maximize-build-space)

## 固件预览
![image](https://user-images.githubusercontent.com/88020021/219606078-203fefc6-a645-410c-ab69-b2b1a4bdb038.png)
