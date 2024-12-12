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

## 加入 UA2F 模块
#git clone https://github.com/Zxilly/UA2F.git package/UA2F
#git clone -b 20221020T133401 https://github.com/Zxilly/UA2F.git package/UA2F
echo 'src-git UA2F https://github.com/Zxilly/UA2F.git' >> feeds.conf.default

## 加入 RKP-IPID 模块
git clone https://github.com/CHN-beta/rkp-ipid.git package/rkp-ipid
## 加入 openclash 模块
#svn checkout https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

## 加入 luci-app-ua2f 模块和 brukamen-mac-luci
#echo 'src-git Brukamen https://github.com/lucikap/Brukamen.git' >> feeds.conf.default
