#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 更换默认主题
#sed -i 's/+luci-theme-bootstrap/+luci-theme-argon_new/g' feeds/luci/collections/luci/Makefile

#1．修改默认的IP 192.168.1.1->192.168.234.1
#sed -i 's/192.168.1.1/192.168.234.1/g' package/base-files/files/bin/config_generate

#2．修改主机名 hostname 'soft_Routes''->hostname 'goodwin''
# sed -i '/uci comit system/iuci set system.isystem[ ].hostname 'openwrt_goodwin'' package/lean/default-settings/files/zzz-default-settings

#3．设置密码为空
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

#4．版本号里显示一个自己的名字 /Lunseil build $(TZ=UTC-8 date "+%Y.%m.%d") @ Openwrt->Lunseil 2021 10 1 @Openwrt 
# sed -i "s/Openwrt /Openwrt build $(TZ=UTC-8 date "+%Y.%m.%d") @ Openwrt /g" package/lean/default-settings/files/zzz-default-settings

#5．修改插件名字
# sed -i 's /"高级重启"/"关机"/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po

#6．修改上游DNS
# sed -i "2i # network config" package/lean/default-settings/files/zzz-default-settings
# sed -i "3i uci set network.lan.dns= '10.10.10.2'" package/lean/default-settings/files/zzz-default-settings

# 7.fix bios boot partition is under 1 MiB
# sed -i 's/256/1024/g' target/linux/x86/image/Makefile
