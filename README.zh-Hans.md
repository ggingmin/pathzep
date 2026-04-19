[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | **简体中文** | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

从 Finder 复制文件和文件夹路径到剪贴板 — 即时完成。

一款轻量级原生 macOS 工具，提供**右键上下文菜单**和**全局键盘快捷键**，可复制绝对路径或主目录相对路径（`~/`）。

## 功能

- **绝对路径** — 复制完整的 POSIX 路径（例如 `/Users/me/projects/app/src/index.ts`）
- **相对路径** — 复制带波浪号的主目录相对路径（例如 `~/projects/app/src/index.ts`）
- **Finder 上下文菜单** — 在 Finder 中右键点击任意文件或文件夹
- **全局快捷键** — 配置可在任何应用中使用的自定义热键
- **菜单栏应用** — 在菜单栏中静默运行，无 Dock 图标
- **多选** — 选择多个文件，一次复制所有路径（以换行符分隔）

## 安装

### 下载（推荐）

1. 从 [Releases](https://github.com/ggingmin/pathzep/releases/latest) 下载最新的 DMG
2. 打开 DMG，将 **PathZep.app** 拖入**应用程序**文件夹
3. 启动 PathZep
4. 启用 Finder 扩展：  
   **系统设置 → 隐私与安全性 → 扩展 → PathZep**

### 从源码构建

需要 Xcode 15 或更高版本。

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## 使用方法

### 在 Finder 中右键点击

启用扩展后，在 Finder 中右键点击任意文件或文件夹，即可看到：

- **Copy Absolute Path** — 例如 `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — 例如 `~/projects/app/src/index.ts`

### 全局快捷键

1. 点击菜单栏中的 `~/` 图标
2. 选择**快捷键设置…**
3. 点击输入框并按下所需的组合键（例如 `⌃⌥⌘C`）

快捷键全局生效 — 在任何应用中都可以从 Finder 复制路径。

## Quick Actions（替代方案）

如果您更喜欢使用 Automator Quick Actions 而非 Finder 扩展：

```bash
# 安装
./AutomatorActions/install-quick-actions.sh

# 卸载
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions 显示在 Finder 的**右键 → 快速操作**中。  
您可以在**系统设置 → 键盘 → 键盘快捷键 → 服务**中分配键盘快捷键。

## 系统要求

- macOS 12 Monterey 或更高版本
- 支持 Intel 和 Apple Silicon

## 许可证

[MIT](LICENSE)
