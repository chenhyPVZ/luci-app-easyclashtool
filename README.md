# luci-app-easyclashtool

**简体中文 | English**

`luci-app-easyclashtool` 是一个基于 Clash.Meta 的 OpenWrt 插件，提供简单易用的 LuCI 图形界面管理代理配置、订阅、TUN 模式与透明代理规则等。

This is a LuCI-based OpenWrt plugin for Clash.Meta kernel. It provides an intuitive web UI for configuring proxies, subscriptions, TUN mode and redirect rules.

## 功能 Features

- 支持订阅管理（添加/更新/测试）
- 支持策略组和节点选择
- Clash Meta TUN 模式控制
- 透明代理规则自动配置
- 日志查看与清理
- 跳转至 Clash Dashboard
- 状态监测与帮助说明

## 安装 Installation

推荐通过 OpenWrt SDK 编译：

```bash
git clone https://github.com/ChenhyPVZ/luci-app-easyclashtool.git package/luci-app-easyclashtool
make menuconfig
# LuCI -> Applications -> luci-app-easyclashtool 选中
make package/luci-app-easyclashtool/compile V=s
```

或使用已构建的 `.ipk` 文件安装：

```bash
opkg install luci-app-easyclashtool_*.ipk
```

## 开源协议 License

MIT License
