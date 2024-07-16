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
git clone https://github.com/Zxilly/UA2F.git package/UA2F

## 加入 RKP-IPID 模块
git clone https://github.com/CHN-beta/rkp-ipid.git package/rkp-ipid
