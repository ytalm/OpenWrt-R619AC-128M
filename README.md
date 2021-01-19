# R619AC-128M

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/Whitestorys/R619AC-128M/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/Whitestorys/R619AC-128M.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/Whitestorys/R619AC-128M.svg?style=flat-square&label=Forks&logo=github)

## 基于Github Action的openwrt编译脚本
- 基于Actions-OpenWrt制作完成的自动编译脚本
- 在原版基础上增加针对IPK编译和上传的功能
---
## 竞斗云Openwrt自动编译
- 本项目Action内为竞斗云固件，每月28日4：00 UTC(北京时间中午12点)自动编译，4小时内可以全部完成
- Mini版本包含基本使用插件，详细插件可以看各个Config的内容
- Mod版本包含Adguard、酸酸乳、京东签到、Clash等插件以及仓库内全部主题
- Full版本在Mod版本基础上增加Passwall、应用过滤等插件
- 固件提供Cowtransfer和Wetransfer下载，有效期均为7天，IPK只提供Action内下载
## 更新记录

### V1.0
- 增加IPK编译以及上传
- 增加软件库以及依赖库

### V2.0
- 规范代码书写

### V3.0
- 同步Lede环境配置，增加依赖库

### V4.0
- 去除set-env指令，适应官方最新要求，新版详见Test版

## 致谢
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [Lienol's OpenWrt](https://github.com/Lienol/openwrt)
- [P3TERX's Action](https://github.com/P3TERX/Actions-OpenWrt)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)

# 编译说明：
#
- 1、`注册及登录github账号`《[注册链接](https://github.com)》
#
- 2、`拉取我的仓库到你的仓库`《[拉取仓库教程](https://github.com/danshui-git/shuoming/blob/master/1%E6%8B%89%E5%8F%96%E4%BB%93%E5%BA%93.md)》
#
- 3、拉取仓库后，到根目录的【diy-lede.sh】修改登录IP，好等编译完成安装后顺利登录openwrt《[修改跟删除](https://github.com/danshui-git/shuoming/blob/master/%E5%88%A0%E9%99%A4%E5%92%8C%E4%BF%AE%E6%94%B9%E6%96%87%E4%BB%B6.md)》
#
- 4、`按☆Star启动编译`《[启动教程](https://github.com/danshui-git/shuoming/blob/master/2%E5%90%AF%E5%8A%A8%E8%AF%B4%E6%98%8E.md)》
#
- 5、`SSH远程连接服务器配置固件`《[SSH工具下载](https://github.com/danshui-git/shuoming/blob/master/Putty%E5%B7%A5%E5%85%B7%E4%B8%8B%E8%BD%BD.md)》《[SSH连接教程](https://github.com/danshui-git/shuoming/blob/master/3SSH%E8%BF%9E%E6%8E%A5%E8%AF%B4%E6%98%8E.md)》
#
- 6、`配置固件`《[youtube大神的固件配置视频教程](https://www.youtube.com/watch?v=jEE_J6-4E3Y)》《[恩山大神xtwz整理的插件中文对照](https://www.right.com.cn/forum/thread-3682029-1-1.html)》
#
- 7、`完成编译，下载固件`《[固件下载教程](https://github.com/danshui-git/shuoming/blob/master/4%E5%9B%BA%E4%BB%B6%E4%B8%8B%E8%BD%BD.md)》
#
- 8、`安装固件`，安装固件时出现“Please press Enter to activate this console”就表示安装好了，出现这个就不会跑码的，稍等1分钟就可以进入网页了
- 如果会跑码，就耐心等待跑码完成，应该不需要1分钟就能跑完的
#
- 9、当你成功编译一次后，看看这些东西，对你或者有点帮助的
《[根目录文件说明](https://github.com/danshui-git/shuoming/blob/master/%E6%A0%B9%E7%9B%AE%E5%BD%95%E6%96%87%E4%BB%B6%E8%AF%B4%E6%98%8E.md)》
《[.github/workflows里的主文件部分说明](https://github.com/danshui-git/shuoming/blob/master/yml%E4%B8%BB%E6%96%87%E4%BB%B6.md)》
《[定时触发编译说明](https://github.com/danshui-git/shuoming/blob/master/%E5%AE%9A%E6%97%B6%E7%BC%96%E8%AF%91%E8%AF%B4%E6%98%8E.md)》
《[本地提取.config](https://github.com/danshui-git/shuoming/blob/master/%E6%9C%AC%E5%9C%B0%E6%8F%90%E5%8F%96.config.md)》
《[其他说明](https://github.com/danshui-git/shuoming/blob/master/%E5%85%B6%E4%BB%96%E8%AF%B4%E6%98%8E.md)》
《[固件包减负](https://github.com/danshui-git/shuoming/blob/master/%E5%9B%BA%E4%BB%B6%E6%96%87%E4%BB%B6%E5%A4%B9%E6%95%B4%E7%90%86.md)》
《[banner的说明](https://github.com/danshui-git/shuoming/blob/master/banner%E8%AF%B4%E6%98%8E.md)》
#
- 10、建议准备梯子一把，虽然云编译不需要梯子，不过你使用SSH连接、下载固件、打开github网页也是需要梯子比较好的（没有也行，比较卡就是）

## 固件说明--只提供说明，建议自己选择好配置文件替换来编译

- 设备有关参数见 public.sh 或者对应设备的 sh
- openwrt 编译较慢，所以需要编译多设备自己根据 backups 的模板修改

## 主题

| 变量                                 | 名字      |
| ----------------------------------- | --------- |
| CONFIG_PACKAGE_luci-theme-bootstrap | bootstrap |
| CONFIG_PACKAGE_luci-theme-material  | material  |
| CONFIG_PACKAGE_luci-theme-netgear   | netgear   |
| CONFIG_PACKAGE_luci-theme-argon     | argon     |

## 插件说明 CONFIG*PACKAGE*

| 变量                               | 名字                                             |
| --------------------------------- | -------------------------------------------------|
| luci-app-music-remote-center      |   音乐远程中心                                     |
| luci-app-accesscontrol            | 访问时间控制                                       |
| luci-app-adbyby-plus              | 广告屏蔽大师 Plus +                                |
| luci-app-arpbind                  | IP/MAC 绑定                                       |
| luci-app-ddns                     | 动态域名 DNS（集成阿里 DDNS 客户端）                 |
| luci-app-filetransfer             | 文件传输（可 web 安装 ipk 包）                      |
| luci-app-firewall                 | 添加防火墙                                         |
| luci-app-flowoffload              | Turbo ACC 网络加速（集成 FLOW,BBR,NAT,DNS...        |
| luci-app-frpc                     | 内网穿透 Frp                                       |
| luci-app-guest-wifi               | WiFi 访客网络                                      |
| luci-app-ipsec-virtual            | **dvirtual**服务器 IPSec                           |
| luci-app-mwan3                    | MWAN3 负载均衡                                     |
| luci-app-mwan3helper              | MWAN3 分流助手                                     |
| luci-app-ramfree                  | 释放内存                                           |
| luci-app-sqm                      | 流量智能队列管理（QOS）                              |
| luci-app-乳酸菌饮料-plus            | 乳酸菌饮料低调上网 Plus+                            |
| s-s New Versiong                  | 新 SS 代理                                         |
| s-s Simple-obfs Plugin            | simple-obfs 简单混淆工具                            |
| s-s v 贰瑞 Plugin                 | SS v 贰瑞插件                                       |
| v 贰瑞                            | v 贰瑞代理                                          |
| Trojan                            | Trojan 代理                                        |
| red---socks2                      | red---socks2 代理                                  |
| Kcptun                            | Kcptun 加速                                        |
| 敏感词 Server                      | 乳酸菌饮料服务器                                     |
| DNS2SOCKS                         | DNS 服务器                                         |
| luci-app-syncdial                 | 多拨虚拟网卡（原 macvlan）                           |
| luci-app-upnp                     | 通用即插即用 UPnP（端口自动转发）                     |
| luci-app-vlmcsd                   | KMS 服务器设置                                     |
| luci-app-vsftpd                   | FTP 服务器                                        |
| luci-app-wifischedule             | WiFi 计划                                         |
| luci-app-wirele                   | 敏感词 egdb                                        |
| luci-app-wol                      | WOL 网络唤醒                                       |
| luci-app-wrtbwmon                 | 实时流量监测                                        |
| luci-app-xlnetacc                 | 迅雷快鸟                                           |
| luci-app-zerotier                 | ZeroTier 内网穿透                                  |
| Utilities ---> open-vm-tools      | 打开适用于 VMware 的 VM Tools                       |
| luci-app-acme                     | ACME 自动化证书管理环境                              |
| luci-app-adblock                  | ADB 广告过滤                                       |
| luci-app-advanced-reboot          | Linksys 高级重启                                   |
| luci-app-ahcp                     | 支持 AHCPd                                         |
| luci-app-amule                    | aMule 下载工具                                     |
| luci-app-aria2                    | Aria2 下载工具                                     |
| luci-app-asterisk                 | 支持 Asterisk 电话服务器                            |
| luci-app-attendedsysupgrade       | 固件更新升级相关                                    |
| luci-app-autoreboot               | 支持计划重启                                       |
| luci-app-baidupcs-web             | 百度网盘管理                                       |
| luci-app-bcp38                    | BCP38 网络入口过滤（不确定）                         |
| luci-app-bird1-ipv4               | 对 Bird1-ipv4 的支持                               |
| luci-app-bird1-ipv6               | 对 Bird1-ipv6 的支持                               |
| luci-app-bmx6                     | BMX6 路由协议                                      |
| luci-app-bmx7                     | BMX7 路由协议                                      |
| luci-app-cifsd                    | 网络共享 CIFS/SMB 服务器                            |
| luci-app-cjdns                    | 加密 IPV6 网络相关                                 |
| luci-app-clamav                   | ClamAV 杀毒软件                                    |
| luci-app-commands                 | Shell 命令模块                                     |
| luci-app-cshark                   | CloudShark 捕获工具                                |
| luci-app-diag-core                | core 诊断工具                                      |
| luci-app-dnscrypt-proxy           | DNSCrypt 解决 DNS 污染                             |
| luci-app-dnsforwarder             | DNSForwarder 防 DNS 污染                           |
| luci-app-dockerman                | Docker 容器                                        |
| luci-app-dump1090                 | 民航无线频率（不确定）                               |
| luci-app-dynapoint                | DynaPoint（未知）                                  |
| luci-app-e2guardian               | Web 内容过滤器                                     |
| luci-app-familycloud              | 家庭云盘                                           |
| luci-app-freifunk-diagnostics     | freifunk 组件 诊断（未知）                          |
| luci-app-freifunk-policyrouting   | freifunk 组件 策略路由（未知）                       |
| luci-app-freifunk-widgets         | freifunk 组件 索引（未知）                          |
| luci-app-fwknopd                  | Firewall Knock Operator 服务器                     |
| luci-app-haproxy-tcp              | HAProxy 负载均衡-TCP                               |
| luci-app-hd-idle                  | 硬盘休眠                                           |
| luci-app-hnet                     | Homenet Status 家庭网络控制协议                     |
| luci-app-kodexplorer              | KOD 可道云私人网盘                                  |
| luci-app-lxc                      | LXC 容器管理                                       |
| luci-app-meshwizard               | 网络设置向导                                       |
| luci-app-minidlna                 | 完全兼容 DLNA / UPnP-AV 客户端的服务器软件           |
| luci-app-mjpg-streamer            | 兼容 Linux-UVC 的摄像头程序                         |
| luci-app-mtwifi                   | MTWiFi 驱动的支持                                  |
| luci-app-n2n_v2                   | N2N 内网穿透 N2N v2 virtual\*\*服务                |
| luci-app-netdata                  | Netdata 实时监控（图表）                            |
| luci-app-nft-qos                  | QOS 流控 Nftables 版                               |
| luci-app-nlbwmon                  | 网络带宽监视器                                      |
| luci-app-noddos                   | NodDOS Clients 阻止 DDoS 攻击                      |
| luci-app-nps                      | 内网穿透 nps                                       |
| luci-app-ntpc                     | NTP 时间同步服务器                                  |
| luci-app-ocserv                   | OpenConnect virtual\*\*服务                        |
| luci-app-olsr                     | OLSR 配置和状态模块                                 |
| luci-app-olsr-services            | OLSR 服务器                                        |
| luci-app-olsr-viz                 | OLSR 可视化                                        |
| luci-app-openvirtual\*\*          | Openvirtual\*\*客户端                              |
| luci-app-openvirtual\*\*-server   | 易于使用的 Openvirtual\*\*服务器 Web-UI              |
| luci-app-p910nd                   | 打印服务器模块                                      |
| luci-app-pagekitec                | Pagekite 内网穿透客户端                             |
| luci-app-polipo                   | Polipo 代理(是一个小型且快速的网页缓存代理)            |
| luci-app-pppoe-relay              | PPPoE NAT 穿透 点对点协议（PPP）                     |
| luci-app-privoxy                  | Privoxy 网络代理(带过滤无缓存)                       |
| luci-app-qbittorrent              | BT 下载工具（qBittorrent）                          |
| luci-app-qos                      | 流量服务质量(QoS)流控                                |
| luci-app-radicale                 | CalDAV/CardDAV 同步工具                            |
| luci-app-rp-pppoe-server          | Roaring Penguin PPPoE Server 服务器                |
| luci-app-samba4                   | 网络共享（Samba4）                                  |
| luci-app-sfe                      | Turbo ACC 网络加速（flowoffload 二选一）             |
| luci-app-s-s-libes                | SS-libev 服务端                                    |
| luci-app-shairplay                | 支持 AirPlay 功能                                  |
| luci-app-siitwizard               | SIIT 配置向导 SIIT-Wizzard                         |
| luci-app-simple-adblock           | 简单的广告拦截                                      |
| luci-app-softethervirtual\*\*     | SoftEther virtual\*\*服务器 NAT 穿透               |
| luci-app-splash                   | Client-Splash 是无线 MESH 网络的一个热点认证系统      |
| luci-app-squid                    | Squid 代理服务器                                   |
| luci-app-乳酸菌饮料 server-python   | 敏感词 Python 服务器                                 |
| luci-app-statistics               | 流量监控工具                                       |
| luci-app-tinyproxy                | Tinyproxy 是 HTTP(S)代理服务器                     |
| luci-app-transmission             | BT 下载工具                                        |
| luci-app-travelmate               | 旅行路由器                                         |
| luci-app-ttyd                     | 网页终端命令行                                     |
| luci-app-udpxy                    | udpxy 做组播服务器                                 |
| luci-app-uhttpd                   | uHTTPd Web 服务器                                  |
| luci-app-unblockmusic             | 解锁网易云灰色歌曲 3 合 1 新版本                      |
| CONFIG_UnblockNeteaseMusic_Go     | Golang 版本                                        |
| CONFIG_UnblockNeteaseMusic_NodeJS | NodeJS 版本                                        |
| luci-app-unbound                  | Unbound DNS 解析器                                 |
| luci-app-usb-printer              | USB 打印服务器                                      |
| luci-app-v 贰瑞-server             | v 贰瑞 服务器                                        |
| luci-app-vnstat                   | vnStat 网络监控（图表）                              |
| luci-app-verysync                 | 微力同步                                            |
| luci-app-watchcat                 | 断网检测功能与定时重启                                |
| luci-app-virtual                  | **bypassvirtual** BypassWebUI 绕过 virtual\*\*设置  |
| luci-app-wireguard                | virtual\*\*服务器 WireGuard 状态                    |
| luci-app-webadmin                 | Web 管理页面设置                                     |

## Action 常用参数说明

> - name 自动构建的名字
> - on 触发条件
>
>   - schedule:                 # 时间表
>     - cron: '0 19 \* \* \*'   # 每天国际时间 19 点，北京时间凌晨 3 点执行(北京+8)
>   - watch                     # 监视
>     - type: started           # 类型：点击了星标
>
> - env 环境变量
> - jobs 任务
> - build 工作的 id
> - run-on 工作运行的环境平台
> - if 工作运行的判断
> - steps 包含一系列任务步骤
>   - name 子任务名
>   - user 使用官方的一些库完成一些操作
>   - run 运行脚本
>   - id 运行 id

## 参考项目或文章

- [Github Action 官方 Help](https://help.github.com/cn/actions/)

- [Github Action 官方仓库](https://github.com/actions)

- [openwrt 源码](https://github.com/coolsnowwolf/lede) © coolsnowwolf

- [openwrt 构建参考](https://github.com/P3TERX/Actions-OpenWrt) © P3TERX

- [openwrt 构建参考](https://github.com/ljk4160/GDOCK) © ljk4160

- [openwrt 主题](https://github.com/sypopo/luci-theme-argon-mc) © sypopo

- [openwrt-OpenClash](https://github.com/vernesong/OpenClash) © vernesong

- [openwrt-packages 包](https://github.com/Lienol/openwrt-package) © Lienol

- [adguardhome 插件](https://github.com/rufengsuixing/luci-app-adguardhome) © rufengsuixing

- [Hello Word 插件](https://github.com/jerrykuku/luci-app-vssr) © jerrykuku

- [Hello Word 插件修复冲突版](https://github.com/Leo-Jo-My/luci-app-vssr-plus) © Leo-Jo-My

- [OpenAppFilter 插件](https://github.com/destan19/OpenAppFilter) © destan19

- [openwrt 插件配置参考恩山](https://www.right.com.cn/forum/thread-344825-1-1.html) © xtwz

- [padavan 源码](https://github.com/chongshengB/rt-n56u) © chongshengB

- [padavan 构建参考](https://github.com/chongshengB/Padavan-build) © chongshengB

## License

[MIT](./LICENSE) © flyheart
