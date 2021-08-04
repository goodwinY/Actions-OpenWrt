#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#adg smartdns
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git kenzoSmall https://github.com/kenzok8/small.git' >>feeds.conf.default
#lean ssr
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# netkeeper
# sed -i '$a src-git diy https://github.com/CCnut/feed-netkeeper.git;LUCI-LUA-UCITRACK' feeds.conf.default

#poweroff
#echo 'src-git poweroff https://github.com/esirplayground/luci-app-poweroff' >>feeds.conf.default
# autotimeset
# echo 'src-git autotimeset  https://github.com/sirpdboy/luci-app-autotimeset' >>feeds.conf.default
#theme-argon
# echo 'src-git themeArgon https://github.com/jerrykuku/luci-theme-argon' >>feeds.conf.default
#sed -i '$a src-git themeArgon https://github.com/jerrykuku/luci-theme-argon.git;18.06' feeds.conf.default
#bandwidthd 流量统计
#echo 'src-git bandwidthd https://github.com/AlexZhuo/luci-app-bandwidthd' >>feeds.conf.default

#强制添加包
#1.poweroff
git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
#2.theme-argon
cd package/lean  
rm -rf luci-theme-argon 
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
cd ../..
#3.bandwidthd 流量统计
git clone https://github.com/AlexZhuo/luci-app-bandwidthd.git package/luci-app-bandwidthd
