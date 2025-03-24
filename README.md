# zhiyue Mytap

[![Cask Livecheck](https://github.com/zhiyue/homebrew-mytap/actions/workflows/livecheck-autoupdate.yml/badge.svg)](https://github.com/zhiyue/homebrew-mytap/actions/workflows/livecheck-autoupdate.yml)

这是一个个人维护的Homebrew Tap仓库，提供多种实用软件的安装配方。

## 可用软件

### Synergy 3

Synergy是一款强大的软件工具，允许您在多台计算机之间共享一套键盘和鼠标。只需将鼠标移动到屏幕边缘，即可控制另一台计算机，就像它们是同一台机器一样。

**特性：**
- 在Windows、macOS和Linux之间无缝共享键盘和鼠标
- 支持复制粘贴文本和文件在不同计算机之间传输
- 支持加密连接保证数据安全
- 简单直观的设置界面
- 支持Apple Silicon和Intel芯片的Mac电脑

## 如何安装这些软件？

`brew install zhiyue/mytap/<formula>`

或者先添加tap，再安装：

`brew tap zhiyue/mytap`
`brew install <formula>`

例如，安装Synergy 3：

`brew install zhiyue/mytap/synergy3`

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