# zhiyue Mytap

[![Cask Livecheck](https://github.com/zhiyue/homebrew-mytap/actions/workflows/livecheck-autoupdate.yml/badge.svg)](https://github.com/zhiyue/homebrew-mytap/actions/workflows/livecheck-autoupdate.yml)

这是一个个人维护的Homebrew Tap仓库，提供多种实用软件的安装配方。

## 可用软件

| 名称 | 描述 | 安装命令 | 类型 |
| --- | --- | --- | --- |
| Synergy 3 | 多设备间共享键盘鼠标的工具 | `brew install zhiyue/mytap/synergy3` | 应用程序 |
| 霞鹜新致宋 | 开源中文宋体字体 | `brew install zhiyue/mytap/font-lxgw-neo-zhisong` | 字体 |
| 霞鹜新致宋 Plus | 霞鹜新致宋的增强版本 | `brew install zhiyue/mytap/font-lxgw-neo-zhisong-plus` | 字体 |

## 如何安装这些软件？

`brew install zhiyue/mytap/<formula>`

或者先添加tap，再安装：

`brew tap zhiyue/mytap`
`brew install <formula>`

例如，安装Synergy 3：

`brew install zhiyue/mytap/synergy3`

安装霞鹜新致宋字体：

`brew install zhiyue/mytap/font-lxgw-neo-zhisong`

您也可以在[`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`中使用：

```ruby
tap "zhiyue/mytap"
brew "<formula>"
```

## 许可证

本仓库中的代码采用MIT许可证。详情请查看[LICENSE.txt](LICENSE.txt)文件。

## 文档

更多Homebrew的使用方法，请参考：

- `brew help`命令
- `man brew`命令
- [Homebrew的官方文档](https://docs.brew.sh)
