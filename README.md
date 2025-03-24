# zhiyue Mytap

[![Cask Livecheck](https://github.com/zhiyue/homebrew-mytap/actions/workflows/livecheck-autoupdate.yml/badge.svg)](https://github.com/zhiyue/homebrew-mytap/actions/workflows/livecheck-autoupdate.yml)

这是一个个人维护的Homebrew Tap仓库，提供多种实用软件的安装配方。

## 可用软件

| 名称 | 描述 | 安装命令 | 类型 |
| --- | --- | --- | --- |
| Synergy 3 | 多设备间共享键盘鼠标的工具 | `brew install zhiyue/mytap/synergy3` | 应用程序 |
| 霞鹜新致宋 | 开源中文宋体字体 | `brew install zhiyue/mytap/font-lxgw-neo-zhisong` | 字体 |
| 霞鹜新致宋 Plus | 霞鹜新致宋的增强版本 | `brew install zhiyue/mytap/font-lxgw-neo-zhisong-plus` | 字体 |

### Synergy 3

Synergy是一款强大的软件工具，允许您在多台计算机之间共享一套键盘和鼠标。只需将鼠标移动到屏幕边缘，即可控制另一台计算机，就像它们是同一台机器一样。

**特性：**

- 在Windows、macOS和Linux之间无缝共享键盘和鼠标
- 支持复制粘贴文本和文件在不同计算机之间传输
- 支持加密连接保证数据安全
- 简单直观的设置界面
- 支持Apple Silicon和Intel芯片的Mac电脑

### 霞鹜新致宋 (LXGW Neo ZhiSong)

霞鹜新致宋是一款开源中文字体，基于霞鹜文楷的衍生字体。这款字体结合了传统宋体的优雅与现代设计的清晰度，适合各种排版需求。

**特性：**

- 优雅的中文宋体风格
- 开源免费使用
- 适合长文阅读和排版

### 霞鹜新致宋 Plus (LXGW Neo ZhiSong Plus)

霞鹜新致宋Plus是霞鹜新致宋的增强版本，提供更丰富的字符支持和优化的字形设计。

**特性：**

- 比基础版拥有更多的字符支持
- 字形设计更加精细
- 同样开源免费，适合专业排版使用

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
