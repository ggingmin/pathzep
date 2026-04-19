<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  從 Finder 複製檔案和資料夾路徑到剪貼簿 — 即時完成。
</p>

一款輕量級原生 macOS 工具，提供**右鍵選單**和**全域鍵盤快捷鍵**，可複製絕對路徑或家目錄相對路徑（`~/`）。

## 功能

- **絕對路徑** — 複製完整的 POSIX 路徑（例如 `/Users/me/projects/app/src/index.ts`）
- **相對路徑** — 複製帶波浪號的家目錄相對路徑（例如 `~/projects/app/src/index.ts`）
- **Finder 右鍵選單** — 在 Finder 中對任意檔案或資料夾按右鍵
- **全域快捷鍵** — 設定可在任何應用程式中使用的自訂快捷鍵
- **選單列應用程式** — 在選單列中靜默執行，無 Dock 圖示
- **多重選取** — 選取多個檔案，一次複製所有路徑（以換行符分隔）

## 安裝

### 下載（建議）

1. 從 [Releases](https://github.com/ggingmin/pathzep/releases/latest) 下載最新的 DMG
2. 開啟 DMG，將 **PathZep.app** 拖入**應用程式**資料夾
3. 啟動 PathZep
4. 啟用 Finder 延伸功能：  
   **系統設定 → 隱私權與安全性 → 延伸功能 → PathZep**

### 從原始碼建置

需要 Xcode 15 或更新版本。

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## 使用方式

### 在 Finder 中按右鍵

啟用延伸功能後，在 Finder 中對任意檔案或資料夾按右鍵，即可看到：

- **Copy Absolute Path** — 例如 `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — 例如 `~/projects/app/src/index.ts`

### 全域快捷鍵

1. 點擊選單列中的 `~/` 圖示
2. 選擇**快捷鍵設定…**
3. 點擊輸入欄位並按下所需的組合鍵（例如 `⌃⌥⌘C`）

快捷鍵全域生效 — 在任何應用程式中都可以從 Finder 複製路徑。

## Quick Actions（替代方案）

如果您偏好使用 Automator Quick Actions 而非 Finder 延伸功能：

```bash
# 安裝
./AutomatorActions/install-quick-actions.sh

# 解除安裝
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions 顯示在 Finder 的**右鍵 → 快速動作**中。  
您可以在**系統設定 → 鍵盤 → 鍵盤快捷鍵 → 服務**中指定鍵盤快捷鍵。

## 系統需求

- macOS 12 Monterey 或更新版本
- 支援 Intel 和 Apple Silicon

## 授權條款

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><b>繁體中文</b></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
