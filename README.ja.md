<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Finderからファイルやフォルダのパスをクリップボードにコピー — 一瞬で。
</p>

**右クリックコンテキストメニュー**と**グローバルキーボードショートカット**で、絶対パスまたはホーム相対パス（`~/`）をコピーできる、軽量でネイティブなmacOSユーティリティです。

## 機能

- **絶対パス** — 完全なPOSIXパスをコピーします（例：`/Users/me/projects/app/src/index.ts`）
- **相対パス** — チルダ付きのホーム相対パスをコピーします（例：`~/projects/app/src/index.ts`）
- **Finderコンテキストメニュー** — Finderで任意のファイルやフォルダを右クリック
- **グローバルショートカット** — どのアプリからでも使えるカスタムホットキーを設定
- **メニューバーアプリ** — メニューバーで静かに動作し、Dockアイコンなし
- **複数選択** — 複数のファイルを選択して、すべてのパスを一度にコピー（改行区切り）

## インストール

### ダウンロード（推奨）

1. [Releases](https://github.com/ggingmin/pathzep/releases/latest)から最新のDMGをダウンロード
2. DMGを開き、**PathZep.app**を**アプリケーション**にドラッグ
3. PathZepを起動
4. Finder拡張機能を有効化：  
   **システム設定 → プライバシーとセキュリティ → 機能拡張 → PathZep**

### ソースからビルド

Xcode 15以上が必要です。

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## 使い方

### Finderで右クリック

拡張機能を有効にした後、Finderでファイルやフォルダを右クリックすると以下が表示されます：

- **Copy Absolute Path** — 例：`/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — 例：`~/projects/app/src/index.ts`

### グローバルショートカット

1. メニューバーの`~/`アイコンをクリック
2. **ショートカット設定…**を選択
3. フィールドをクリックして、お好みのキーの組み合わせを押す（例：`⌃⌥⌘C`）

ショートカットはグローバルに動作します — どのアプリにいてもFinderのパスをコピーできます。

## Quick Actions（代替手段）

Finder拡張機能の代わりにAutomator Quick Actionsを使いたい場合：

```bash
# インストール
./AutomatorActions/install-quick-actions.sh

# アンインストール
./AutomatorActions/uninstall-quick-actions.sh
```

Quick ActionsはFinderの**右クリック → クイックアクション**に表示されます。  
**システム設定 → キーボード → キーボードショートカット → サービス**でキーボードショートカットを割り当てられます。

## 要件

- macOS 12 Monterey以降
- IntelおよびApple Silicon対応

## ライセンス

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><b>日本語</b></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
