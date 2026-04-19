# PathZep `~/`

> Copy file and folder paths from Finder to your clipboard — instantly.

A lightweight, native macOS utility that adds **right-click context menu** and **global keyboard shortcuts** for copying absolute or home-relative (`~/`) paths.

[![Download](https://img.shields.io/github/v/release/ggingmin/pathzep?label=Download&style=flat-square)](https://github.com/ggingmin/pathzep/releases/latest)
[![License](https://img.shields.io/github/license/ggingmin/pathzep?style=flat-square)](LICENSE)
[![macOS](https://img.shields.io/badge/macOS-12%2B-blue?style=flat-square)](#requirements)

---

## Features

- **Absolute path** — Copy the full POSIX path (e.g. `/Users/me/projects/app/src/index.ts`)
- **Relative path** — Copy the home-relative path with tilde (e.g. `~/projects/app/src/index.ts`)
- **Finder context menu** — Right-click any file or folder in Finder
- **Global shortcuts** — Configure custom hotkeys that work from any app
- **Menu bar app** — Runs quietly in the menu bar, no Dock icon
- **Multi-select** — Select multiple files and copy all paths at once (newline-separated)

## Installation

### Download (recommended)

1. Download the latest DMG from [**Releases**](https://github.com/ggingmin/pathzep/releases/latest)
2. Open the DMG and drag **PathZep.app** to **Applications**
3. Launch PathZep
4. Enable the Finder extension:  
   **System Settings → Privacy & Security → Extensions → PathZep**

### Build from source

Requires Xcode 15+.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Usage

### Right-click in Finder

After enabling the extension, right-click any file or folder in Finder to see:

- **Copy Absolute Path** — e.g. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — e.g. `~/projects/app/src/index.ts`

### Global shortcuts

1. Click the `~/` icon in the menu bar
2. Select **Shortcut Settings…**
3. Click a field and press your desired key combination (e.g. `⌃⌥⌘C`)

Shortcuts work globally — copy paths from Finder while in any app.

## Quick Actions (alternative)

If you prefer Automator Quick Actions over the Finder extension:

```bash
# Install
./AutomatorActions/install-quick-actions.sh

# Uninstall
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions appear under **right-click → Quick Actions** in Finder.  
You can assign keyboard shortcuts in **System Settings → Keyboard → Keyboard Shortcuts → Services**.

## Requirements

- macOS 12 Monterey or later
- Intel and Apple Silicon supported

## License

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>

<br>

| | | |
|---|---|---|
| **English** | [한국어](README.ko.md) | [日本語](README.ja.md) |
| [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) |
| [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) |
| [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) |
| [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) |
| [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) |
| [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) |
| [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) |
| [Bahasa Melayu](README.ms.md) | [עברית](README.he.md) | |

</details>
