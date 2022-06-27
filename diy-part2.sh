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

rm -f ./.config*
touch ./.config
cat >> .config <<EOF
# ========================固件定制部分========================
CONFIG_TARGET_x86=y
CONFIG_TARGET_x86_64=y
CONFIG_TARGET_x86_64_DEVICE_generic=y
CONFIG_OPENVPN_openssl_ENABLE_DEF_AUTH=y
CONFIG_OPENVPN_openssl_ENABLE_FRAGMENT=y
CONFIG_OPENVPN_openssl_ENABLE_LZ4=y
CONFIG_OPENVPN_openssl_ENABLE_LZO=y
CONFIG_OPENVPN_openssl_ENABLE_MULTIHOME=y
CONFIG_OPENVPN_openssl_ENABLE_PF=y
CONFIG_OPENVPN_openssl_ENABLE_PORT_SHARE=y
CONFIG_OPENVPN_openssl_ENABLE_SMALL=y
# CONFIG_PACKAGE_UnblockNeteaseMusic-Go is not set
# CONFIG_PACKAGE_iptables-mod-ipsec is not set
# CONFIG_PACKAGE_kmod-crypto-cbc is not set
# CONFIG_PACKAGE_kmod-crypto-deflate is not set
# CONFIG_PACKAGE_kmod-crypto-des is not set
# CONFIG_PACKAGE_kmod-crypto-echainiv is not set
# CONFIG_PACKAGE_kmod-crypto-hmac is not set
# CONFIG_PACKAGE_kmod-crypto-md5 is not set
# CONFIG_PACKAGE_kmod-ipsec is not set
# CONFIG_PACKAGE_kmod-ipt-ipsec is not set
# CONFIG_PACKAGE_kmod-iptunnel6 is not set
# CONFIG_PACKAGE_kmod-nf-conntrack-netlink is not set
# CONFIG_PACKAGE_kmod-shortcut-fe is not set
# CONFIG_PACKAGE_kmod-shortcut-fe-cm is not set
# CONFIG_PACKAGE_kmod-tcp-bbr is not set
# CONFIG_PACKAGE_libgmp is not set
CONFIG_PACKAGE_liblzo=y
# CONFIG_PACKAGE_libminiupnpc is not set
# CONFIG_PACKAGE_libnatpmp is not set
# CONFIG_PACKAGE_libstdcpp is not set
# CONFIG_PACKAGE_luci-app-accesscontrol is not set
# CONFIG_PACKAGE_luci-app-arpbind is not set
# CONFIG_PACKAGE_luci-app-ipsec-vpnd is not set
# CONFIG_PACKAGE_luci-app-nlbwmon is not set
CONFIG_PACKAGE_luci-app-openvpn-server=y
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-ng is not set
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-webui is not set
# CONFIG_PACKAGE_luci-app-turboacc is not set
# CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_BBR_CCA is not set
# CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_SHORTCUT_FE_CM is not set
# CONFIG_PACKAGE_luci-app-unblockmusic is not set
# CONFIG_PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go is not set
# CONFIG_PACKAGE_luci-app-upnp is not set
# CONFIG_PACKAGE_luci-app-vlmcsd is not set
# CONFIG_PACKAGE_luci-app-vsftpd is not set
# CONFIG_PACKAGE_luci-app-xlnetacc is not set
# CONFIG_PACKAGE_luci-app-zerotier is not set
CONFIG_PACKAGE_luci-i18n-openvpn-server-zh-cn=y
CONFIG_PACKAGE_luci-theme-argon=y
CONFIG_PACKAGE_luci-theme-netgear=y
# CONFIG_PACKAGE_miniupnpd is not set
# CONFIG_PACKAGE_nlbwmon is not set
CONFIG_PACKAGE_openvpn-easy-rsa=y
CONFIG_PACKAGE_openvpn-openssl=y
# CONFIG_PACKAGE_pdnsd-alt is not set
# CONFIG_PACKAGE_strongswan is not set
# CONFIG_PACKAGE_vlmcsd is not set
# CONFIG_PACKAGE_vsftpd-alt is not set
# CONFIG_PACKAGE_zerotier is not set
CONFIG_TARGET_EXT4_BLOCKSIZE=4096
CONFIG_TARGET_EXT4_BLOCKSIZE_4K=y
CONFIG_TARGET_EXT4_RESERVED_PCT=0
CONFIG_TARGET_IMAGES_GZIP=y
CONFIG_TARGET_ROOTFS_EXT4FS=y
CONFIG_TARGET_ROOTFS_PARTSIZE=1000
# CONFIG_VMDK_IMAGES is not set
# ========================固件定制部分结束========================
EOF
sed -i 's/^[ \t]*//g' ./.config

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
