<div align="center">

# 🍺 OriginCoderPulse Homebrew Tap

**Install [Nusic](https://github.com/OriginCoderPulse/Music) and other tools via Homebrew**

[![Tap](https://img.shields.io/badge/tap-OriginCoderPulse%2FHomeBrew--Tap-blue?style=flat-square)](https://github.com/OriginCoderPulse/HomeBrew-Tap)
[![Formula](https://img.shields.io/badge/nusic-0.1.2-green?style=flat-square)](Formula/nusic.rb)

[English](#-install) · [简体中文](./README.zh-CN.md)

</div>

---

## 📦 Available formulae

| Formula | Description | Version |
|---------|-------------|---------|
| 🎵 **nusic** | Cross-platform terminal music player for local files | `0.1.2` |

Full docs: [Nusic README](https://github.com/OriginCoderPulse/Music/blob/main/README.md) · [中文文档](https://github.com/OriginCoderPulse/Music/blob/main/README.zh-CN.md)

---

## 🚀 Install

```bash
brew tap OriginCoderPulse/HomeBrew-Tap
brew install nusic
```

Then launch:

```bash
nusic
```

Music files go in `~/.music` (created on first run). Press **`o`** inside nusic to open the folder.

---

## 🔄 Update locally

After a new release is published to this tap:

```bash
brew update
brew upgrade nusic
```

Force reinstall the latest bottle/source build:

```bash
brew reinstall nusic
```

Check installed version:

```bash
nusic --version
brew info nusic
```

---

## 🛠️ Build from HEAD (main branch)

Track the latest unreleased commits from the Music repo:

```bash
brew install --HEAD nusic
```

Upgrade HEAD install:

```bash
brew upgrade --fetch-HEAD nusic
```

---

## 📋 Tap maintenance

```bash
# List tapped repos
brew tap

# Remove this tap
brew untap OriginCoderPulse/HomeBrew-Tap
```

---

<div align="center">

[OriginCoderPulse on GitHub](https://github.com/OriginCoderPulse) · [简体中文](./README.zh-CN.md)

</div>
