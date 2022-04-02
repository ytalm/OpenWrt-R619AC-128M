#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

# 定制默认IP
sed -i 's/192.168.1.1/172.16.10.1/g' package/base-files/files/bin/config_generate

# 添加第三方软件包
#git clone https://github.com/KFERMercer/luci-app-serverchan package/luci-app-serverchan
#git clone https://github.com/kang-mk/luci-app-smartinfo package/luci-app-smartinfo
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/Leo-Jo-My/luci-theme-leo.git package/luci-theme-leo
git clone https://github.com/Aslin-Ameng/luci-theme-Night.git package/luci-theme-Night
git clone https://github.com/Aslin-Ameng/luci-theme-Light.git package/luci-theme-Light
#git clone https://github.com/Flowers-in-thorns/luci-app-vssr-coexist.git package/luci-app-vssr-coexist

# uci-app-dockerman && diskman
#git clone https://github.com/lisaac/luci-lib-docker.git package/luci-lib-docker
#git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
#git clone https://github.com/lisaac/luci-app-diskman package/luci-app-diskman
#mkdir -p package/parted && cp -i package/luci-app-diskman/Parted.Makefile package/parted/Makefile

#创建自定义配置文件 - G-DOCK

rm -f ./.config*
touch ./.config

#
# ========================固件定制部分========================
# 

# 
# 如果不对本区块做出任何编辑, 则生成默认配置固件. 
# 

# 以下为定制化固件选项和说明:
#

#
# 有些插件/选项是默认开启的, 如果想要关闭, 请参照以下示例进行编写:
# 
#          =========================================
#         |  # 取消编译VMware镜像:                   |
#         |  cat >> .config <<EOF                   |
#         |  # CONFIG_VMDK_IMAGES is not set        |
#         |  EOF                                    |
#          =========================================
#

# 
# 以下是一些提前准备好的一些插件选项.
# 直接取消注释相应代码块即可应用. 不要取消注释代码块上的汉字说明.
# 如果不需要代码块里的某一项配置, 只需要删除相应行.
#
# 如果需要其他插件, 请按照示例自行添加.
# 注意, 只需添加依赖链顶端的包. 如果你需要插件 A, 同时 A 依赖 B, 即只需要添加 A.
# 
# 无论你想要对固件进行怎样的定制, 都需要且只需要修改 EOF 回环内的内容.
# 

# 编译x64固件:
cat >> .config <<EOF
CONFIG_TARGET_ipq40xx=y
CONFIG_TARGET_ipq40xx_DEVICE_p2w_r619ac-128m=y
EOF

# 设置固件大小:
cat >> .config <<EOF
CONFIG_TARGET_KERNEL_PARTSIZE=16
CONFIG_TARGET_ROOTFS_PARTSIZE=160
EOF

# 固件压缩:
cat >> .config <<EOF
CONFIG_TARGET_IMAGES_GZIP=y
EOF

# 编译UEFI固件:
# cat >> .config <<EOF
# CONFIG_EFI_IMAGES=y
# EOF

# IPv6支持:
cat >> .config <<EOF
#CONFIG_PACKAGE_ipv6helper=y
#CONFIG_PACKAGE_dnsmasq_full_dhcpv6=y
EOF

# 多文件系统支持:
cat >> .config <<EOF
CONFIG_PACKAGE_kmod-fs-nfs=y
CONFIG_PACKAGE_kmod-fs-nfs-common=y
CONFIG_PACKAGE_kmod-fs-nfs-v3=y
CONFIG_PACKAGE_kmod-fs-nfs-v4=y
CONFIG_PACKAGE_kmod-fs-ntfs=y
CONFIG_PACKAGE_kmod-fs-squashfs=y
EOF

# USB3.0支持:
cat >> .config <<EOF
CONFIG_PACKAGE_kmod-usb-ohci=y
CONFIG_PACKAGE_kmod-usb-ohci-pci=y
CONFIG_PACKAGE_kmod-usb2=y
CONFIG_PACKAGE_kmod-usb2-pci=y
CONFIG_PACKAGE_kmod-usb3=y
EOF

# 第三方插件选择:
cat >> .config <<EOF
CONFIG_PACKAGE_luci-app-serverchan=y #微信推送
# CONFIG_PACKAGE_luci-app-smartinfo=y #磁盘健康监控
EOF

# Passwall插件:
cat >> .config <<EOF
CONFIG_PACKAGE_luci-app-passwall=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ipt2socks=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_socks=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_socks=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Brook=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_kcptun=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_haproxy=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ChinaDNS_NG=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_dns2socks=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_pdnsd=y
CONFIG_PACKAGE_kcptun-client=y
CONFIG_PACKAGE_haproxy=y
CONFIG_PACKAGE_chinadns-ng=y
CONFIG_PACKAGE_v2ray=y
CONFIG_PACKAGE_trojan=y
CONFIG_PACKAGE_brook=y
CONFIG_PACKAGE_ipt2socks=y
CONFIG_PACKAGE_shadowsocks-libev-config=y
CONFIG_PACKAGE_shadowsocks-libev-ss-local=y
CONFIG_PACKAGE_shadowsocks-libev-ss-redir=y
CONFIG_PACKAGE_shadowsocksr-libev-alt=y
CONFIG_PACKAGE_shadowsocksr-libev-ssr-local=y
EOF

# 常用LuCI插件(禁用):
cat >> .config <<EOF
CONFIG_PACKAGE_luci-app-smartdns=y #smartdnsDNS服务
CONFIG_PACKAGE_luci-app-adguardhome=y #ADguardHome去广告服务
CONFIG_PACKAGE_luci-app-pppoe-relay=y #PPPoE穿透
CONFIG_PACKAGE_luci-app-pppoe-server=y #PPPoE服务器
CONFIG_PACKAGE_luci-app-trojan-server=yt #Trojan服务器
CONFIG_PACKAGE_luci-app-v2ray-server=y #V2ray服务器
CONFIG_PACKAGE_luci-app-pptp-vpnserver-manyusers=y #PPTP VPN 服务器
CONFIG_PACKAGE_luci-app-hd-idle=y #磁盘休眠
EOF

# 常用LuCI插件(启用):
cat >> .config <<EOF
CONFIG_PACKAGE_luci-app-nlbwmon=y #宽带流量监控
CONFIG_PACKAGE_luci-app-wrtbwmon=y #实时流量监测
CONFIG_PACKAGE_luci-app-webadmin=y #Web管理页面设置
CONFIG_PACKAGE_luci-app-filetransfer=y #系统-文件传输
CONFIG_PACKAGE_luci-app-autoreboot=y #定时重启
CONFIG_PACKAGE_luci-app-unblockmusic=y #解锁网易云灰色歌曲
CONFIG_PACKAGE_luci-app-frpc=y #Frp内网穿透
CONFIG_PACKAGE_luci-app-upnp=y #通用即插即用UPnP(端口自动转发)
CONFIG_PACKAGE_luci-app-softethervpn=y #SoftEtherVPN服务器
CONFIG_DEFAULT_luci-app-vlmcsd=y #KMS激活服务器
CONFIG_PACKAGE_luci-app-arpbind=yes #IP/MAC绑定
CONFIG_PACKAGE_luci-app-sqm=y #SQM智能队列管理
CONFIG_PACKAGE_luci-app-ddns=y #DDNS服务
CONFIG_PACKAGE_luci-app-wol=y #网络唤醒
# CONFIG_PACKAGE_luci-app-control-mia=y #时间控制
CONFIG_PACKAGE_luci-app-control-timewol=y #定时唤醒
CONFIG_PACKAGE_luci-app-control-webrestriction=y #访问限制
CONFIG_PACKAGE_luci-app-control-weburl=y #网址过滤
CONFIG_PACKAGE_luci-app-flowoffload=y #Turbo ACC 网络加速
CONFIG_PACKAGE_luci-app-vssr-coexist=y #兼容魔改和lean原版
CONFIG_PACKAGE_luci-app-netdata=y
# CONFIG_PACKAGE_luci-app-mwan3helper=y #分流
CONFIG_PACKAGE_luci-app-zerotier=y #内网穿透
CONFIG_PACKAGE_luci-app-acme=y
#CONFIG_PACKAGE_luci-app-docker=y
#CONFIG_PACKAGE_luci-app-dockerman=y
#CONFIG_PACKAGE_luci-app-diskman=y
CONFIG_LUCI_LANG_zh-tw=y
CONFIG_LUCI_LANG_en=y
EOF

# 网络共享:
cat >> .config <<EOF
CONFIG_PACKAGE_luci-app-fileassistant=y #文件助手
CONFIG_PACKAGE_luci-app-vsftpd=y #FTP 服务器
CONFIG_PACKAGE_luci-app-samba=y #网络共享
CONFIG_PACKAGE_autosamba=y #网络共享
CONFIG_PACKAGE_samba36-server=y #网络共享
EOF

# LuCI主题:
cat >> .config <<EOF
CONFIG_PACKAGE_luci-theme-darkmatter=y
CONFIG_PACKAGE_luci-theme-bootstrap-mod=y
CONFIG_PACKAGE_luci-theme-netgear-mc=y
CONFIG_PACKAGE_luci-theme-argon-mod=y
CONFIG_PACKAGE_luci-theme-opentomcat=y
CONFIG_PACKAGE_luci-theme-leo=y
CONFIG_PACKAGE_luci-theme-Night=y
CONFIG_PACKAGE_luci-theme-Light=y
EOF

# 常用软件包:
cat >> .config <<EOF
CONFIG_PACKAGE_curl=y
CONFIG_PACKAGE_htop=y
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_screen=y
CONFIG_PACKAGE_tree=y
CONFIG_PACKAGE_vim-fuller=y
CONFIG_PACKAGE_wget=y
EOF

# 其他软件包:
cat >> .config <<EOF
CONFIG_PACKAGE_autocore=y
EOF

# 取消编译VMware镜像以及镜像填充 (不要删除被缩进的注释符号):
cat >> .config <<EOF
#CONFIG_TARGET_IMAGES_PAD=y
#CONFIG_VMDK_IMAGES=y
EOF

# 
# ========================固件定制部分结束========================
# 

sed -i 's/^[ \t]*//g' ./.config

# 配置文件创建完成
