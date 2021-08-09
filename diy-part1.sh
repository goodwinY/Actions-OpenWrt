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
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# netkeeper 创翼
# sed -i '$a src-git diy https://github.com/CCnut/feed-netkeeper.git;LUCI-LUA-UCITRACK' feeds.conf.default
#theme-argon 主题
#cd package/lean  
#rm -rf luci-theme-argon 
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
#cd ../..

#rm -rf package/luci-app-dockerman
#rm -rf package/lean/luci-lib-docker
#rm -rf package/luci-app-tcpdump
#rm -rf package/luci-app-pushbot
#rm -rf package/luci-app-poweroff
#rm -rf package/luci-app-feed-netkeeper
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package.git;main' feeds.conf.default
#sed -i '$a src-git diy1 https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
#git clone https://github.com/lisaac/luci-lib-docker package/lean/luci-lib-docker
#git clone https://github.com/KFERMercer/luci-app-tcpdump.git package/luci-app-tcpdump
#git clone https://github.com/zzsj0928/luci-app-pushbot.git package/luci-app-pushbot
#git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
#git clone -b LUCI-LUA-UCITRACK https://github.com/CCnut/feed-netkeeper package/luci-app-feed-netkeeper

#test
sed -i '$a src-git goodwin https://github.com/281677160/openwrt-package' feeds.conf.default
