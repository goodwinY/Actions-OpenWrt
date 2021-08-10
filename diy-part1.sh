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

#rm -rf package/goodwin/luci-app-dockerman
#rm -rf package/lean/luci-lib-docker
#rm -rf package/goodwin/luci-app-tcpdump
#rm -rf package/goodwin/luci-app-pushbot
#rm -rf package/goodwin/luci-app-poweroff
#rm -rf package/goodwin/luci-app-feed-netkeeper
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package.git;main' feeds.conf.default
#sed -i '$a src-git diy1 https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#git clone https://github.com/lisaac/luci-app-dockerman package/goodwin/luci-app-dockerman
#git clone https://github.com/lisaac/luci-lib-docker package/goodwin/luci-lib-docker
#git clone https://github.com/KFERMercer/luci-app-tcpdump.git package/goodwin/luci-app-tcpdump
#git clone https://github.com/zzsj0928/luci-app-pushbot.git package/goodwin/luci-app-pushbot
#git clone https://github.com/esirplayground/luci-app-poweroff package/goodwin/luci-app-poweroff
#git clone -b LUCI-LUA-UCITRACK https://github.com/CCnut/feed-netkeeper package/goodwin/luci-app-feed-netkeeper

#test
#sed -i '$a src-git goodwin https://github.com/281677160/openwrt-package' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
