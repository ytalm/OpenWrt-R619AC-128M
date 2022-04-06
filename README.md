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

## OpenWrt MenuConfig设置和LuCI选项插件说明 CONFIG*PACKAGE*

https://mtom.top/827.html

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
