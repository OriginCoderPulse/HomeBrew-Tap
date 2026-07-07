<div align="center">

# 🍺 OriginCoderPulse Homebrew Tap

**通过 Homebrew 安装 [Nusic](https://github.com/OriginCoderPulse/Music) 等工具**

[![Tap](https://img.shields.io/badge/tap-OriginCoderPulse%2FHomeBrew--Tap-blue?style=flat-square)](https://github.com/OriginCoderPulse/HomeBrew-Tap)
[![Formula](https://img.shields.io/badge/nusic-0.1.2-green?style=flat-square)](Formula/nusic.rb)

[English](./README.md) · [简体中文](#-安装)

</div>

---

## 📦 可用 Formula

| Formula | 说明 | 版本 |
|---------|------|------|
| 🎵 **nusic** | 跨平台终端本地音乐播放器 | `0.1.2` |

完整文档：[Nusic README](https://github.com/OriginCoderPulse/Music/blob/main/README.md) · [中文文档](https://github.com/OriginCoderPulse/Music/blob/main/README.zh-CN.md)

---

## 🚀 安装

```bash
brew tap OriginCoderPulse/HomeBrew-Tap
brew install nusic
```

启动：

```bash
nusic
```

音乐文件放在 `~/.music`（首次运行自动创建）。在 nusic 里按 **`o`** 可打开该目录。

---

## 🔄 本地更新

Tap 发布新版本后，在本机执行：

```bash
brew update
brew upgrade nusic
```

强制重新安装最新版：

```bash
brew reinstall nusic
```

查看当前版本：

```bash
nusic --version
brew info nusic
```

---

## 🛠️ 从 HEAD 安装（跟踪 main 最新代码）

```bash
brew install --HEAD nusic
```

更新 HEAD 安装：

```bash
brew upgrade --fetch-HEAD nusic
```

---

## 📋 Tap 管理

```bash
# 查看已添加的 tap
brew tap

# 移除此 tap
brew untap OriginCoderPulse/HomeBrew-Tap
```

---

<div align="center">

[OriginCoderPulse on GitHub](https://github.com/OriginCoderPulse) · [English](./README.md)

</div>
