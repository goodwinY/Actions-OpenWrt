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



# CONFIG_NETFILTER=y
# CONFIG_NETFILTER_NETLINK=y
# CONFIG_NETFILTER_NETLINK_GLUE_CT=y
# CONFIG_NETFILTER_NETLINK_LOG=y
# CONFIG_NF_CONNTRACK=y
# CONFIG_NF_CT_NETLINK=y

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
target=$(grep "^CONFIG_TARGET" .config --max-count=1 | awk -F "=" '{print $1}' | awk -F "_" '{print $3}')
for configFile in $(ls target/linux/$target/config*)
do
    echo -e "\nCONFIG_NETFILTER_NETLINK_GLUE_CT=y" >> $configFile
done

cat <<EOT >> .config
CONFIG_PACKAGE_kmod-ipt-conntrack-extra=y
CONFIG_PACKAGE_kmod-ipt-filter=y
CONFIG_PACKAGE_kmod-ipt-ipopt=y
CONFIG_PACKAGE_kmod-ipt-nfqueue=y
CONFIG_PACKAGE_kmod-ipt-u32=y
CONFIG_PACKAGE_kmod-nfnetlink-queue=y
CONFIG_PACKAGE_libnetfilter-conntrack=y
CONFIG_PACKAGE_libnetfilter-queue=y
CONFIG_PACKAGE_libnfnetlink=y
CONFIG_PACKAGE_iptables-mod-conntrack-extra=y
CONFIG_PACKAGE_iptables-mod-filter=y
CONFIG_PACKAGE_iptables-mod-ipopt=y
CONFIG_PACKAGE_iptables-mod-nfqueue=y
CONFIG_PACKAGE_iptables-mod-u32=y
CONFIG_PACKAGE_ipset=y
CONFIG_PACKAGE_libmnl=y
CONFIG_PACKAGE_kmod-rkp-ipid=y
CONFIG_PACKAGE_ua2f=y
CONFIG_UA2F_CUSTOM_USER_AGENT=y
CONFIG_UA2F_USER_AGENT_STRING="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0"
CONFIG_PACKAGE_luci-app-ua2f=y
#CONFIG_PACKAGE_brukamen-mac-luci=y
EOT

