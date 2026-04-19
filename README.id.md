<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Salin path file dan folder dari Finder ke clipboard — secara instan.
</p>

Utilitas macOS native yang ringan, menambahkan **menu konteks klik kanan** dan **pintasan keyboard global** untuk menyalin path absolut atau relatif terhadap home (`~/`).

## Fitur

- **Path absolut** — Salin path POSIX lengkap (contoh: `/Users/me/projects/app/src/index.ts`)
- **Path relatif** — Salin path relatif terhadap home dengan tilde (contoh: `~/projects/app/src/index.ts`)
- **Menu konteks Finder** — Klik kanan pada file atau folder mana pun di Finder
- **Pintasan global** — Atur hotkey kustom yang berfungsi dari aplikasi mana pun
- **Aplikasi menu bar** — Berjalan diam-diam di menu bar, tanpa ikon di Dock
- **Pilih banyak** — Pilih beberapa file dan salin semua path sekaligus (dipisahkan baris baru)

## Instalasi

### Unduh (disarankan)

1. Unduh DMG terbaru dari [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Buka DMG dan seret **PathZep.app** ke **Aplikasi**
3. Jalankan PathZep
4. Aktifkan ekstensi Finder:  
   **Pengaturan Sistem → Privasi & Keamanan → Ekstensi → PathZep**

### Build dari kode sumber

Memerlukan Xcode 15 atau lebih baru.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Penggunaan

### Klik kanan di Finder

Setelah mengaktifkan ekstensi, klik kanan pada file atau folder mana pun di Finder untuk melihat:

- **Copy Absolute Path** — contoh: `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — contoh: `~/projects/app/src/index.ts`

### Pintasan global

1. Klik ikon `~/` di menu bar
2. Pilih **Pengaturan Pintasan…**
3. Klik pada kolom dan tekan kombinasi tombol yang diinginkan (contoh: `⌃⌥⌘C`)

Pintasan berfungsi secara global — salin path dari Finder saat berada di aplikasi mana pun.

## Quick Actions (alternatif)

Jika Anda lebih suka Automator Quick Actions daripada ekstensi Finder:

```bash
# Instal
./AutomatorActions/install-quick-actions.sh

# Hapus instalasi
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions muncul di bawah **klik kanan → Tindakan Cepat** di Finder.  
Anda dapat menetapkan pintasan keyboard di **Pengaturan Sistem → Keyboard → Pintasan Keyboard → Layanan**.

## Persyaratan

- macOS 12 Monterey atau lebih baru
- Mendukung Intel dan Apple Silicon

## Lisensi

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
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><b>Bahasa Indonesia</b></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
