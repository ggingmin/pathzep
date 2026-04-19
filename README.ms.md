<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Salin laluan fail dan folder dari Finder ke papan keratan anda — serta-merta.
</p>

Utiliti macOS asli yang ringan yang menambahkan **menu konteks klik kanan** dan **pintasan papan kekunci global** untuk menyalin laluan mutlak atau relatif kepada direktori rumah (`~/`).

## Ciri-ciri

- **Laluan mutlak** — Salin laluan POSIX penuh (cth. `/Users/me/projects/app/src/index.ts`)
- **Laluan relatif** — Salin laluan relatif kepada direktori rumah dengan tilde (cth. `~/projects/app/src/index.ts`)
- **Menu konteks Finder** — Klik kanan mana-mana fail atau folder dalam Finder
- **Pintasan global** — Konfigurasikan kekunci pintasan tersuai yang berfungsi dari mana-mana aplikasi
- **Aplikasi bar menu** — Berjalan senyap di bar menu, tiada ikon Dock
- **Pilihan berbilang** — Pilih berbilang fail dan salin semua laluan sekaligus (dipisahkan dengan baris baharu)

## Pemasangan

### Muat turun (disyorkan)

1. Muat turun DMG terkini dari [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Buka DMG dan seret **PathZep.app** ke **Applications**
3. Lancarkan PathZep
4. Aktifkan sambungan Finder:  
   **Tetapan Sistem → Privasi & Keselamatan → Sambungan → PathZep**

### Bina dari kod sumber

Memerlukan Xcode 15+.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Penggunaan

### Klik kanan dalam Finder

Selepas mengaktifkan sambungan, klik kanan mana-mana fail atau folder dalam Finder untuk melihat:

- **Copy Absolute Path** — cth. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — cth. `~/projects/app/src/index.ts`

### Pintasan global

1. Klik ikon `~/` di bar menu
2. Pilih **Tetapan Pintasan…**
3. Klik pada medan dan tekan kombinasi kekunci yang dikehendaki (cth. `⌃⌥⌘C`)

Pintasan berfungsi secara global — salin laluan dari Finder semasa berada dalam mana-mana aplikasi.

## Quick Actions (alternatif)

Jika anda lebih suka Automator Quick Actions berbanding sambungan Finder:

```bash
# Pasang
./AutomatorActions/install-quick-actions.sh

# Nyahpasang
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions muncul di bawah **klik kanan → Tindakan Pantas** dalam Finder.  
Anda boleh menetapkan pintasan papan kekunci di **Tetapan Sistem → Papan Kekunci → Pintasan Papan Kekunci → Perkhidmatan**.

## Keperluan

- macOS 12 Monterey atau lebih baharu
- Intel dan Apple Silicon disokong

## Lesen

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><b>Bahasa Melayu</b></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
