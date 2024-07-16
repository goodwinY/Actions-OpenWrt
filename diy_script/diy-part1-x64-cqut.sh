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

sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall;main' >> feeds.conf.default
svn checkout https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
