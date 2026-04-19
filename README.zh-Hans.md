<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  从 Finder 复制文件和文件夹路径到剪贴板 — 即时完成。
</p>

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

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><b>简体中文</b></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
