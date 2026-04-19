[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [ไทย](README.th.md) | [Tiếng Việt](README.vi.md) | [Bahasa Indonesia](README.id.md) | [Türkçe](README.tr.md)

# PathZep `~/`

Salin path file dan folder dari Finder ke clipboard Anda — secara instan.

Utilitas macOS native yang ringan, menambahkan **menu konteks klik kanan** dan **pintasan keyboard global** untuk menyalin path absolut atau relatif terhadap home (`~/`).

## Fitur

- **Path absolut** — Salin path POSIX lengkap (contoh: `/Users/me/projects/app/src/index.ts`)
- **Path relatif** — Salin path relatif terhadap home dengan tilde (contoh: `~/projects/app/src/index.ts`)
- **Menu konteks Finder** — Klik kanan pada file atau folder apa pun di Finder
- **Pintasan global** — Atur hotkey kustom yang berfungsi dari aplikasi mana pun
- **Aplikasi menu bar** — Berjalan diam-diam di menu bar, tanpa ikon di Dock
- **Pilih banyak** — Pilih beberapa file dan salin semua path sekaligus (dipisahkan baris baru)

## Instalasi

### Unduh (disarankan)

1. Unduh DMG terbaru dari [Rilis](https://github.com/ggingmin/pathzep/releases/latest)
2. Buka DMG dan seret **PathZep.app** ke **Aplikasi**
3. Jalankan PathZep
4. Aktifkan ekstensi Finder:  
   **Pengaturan Sistem → Privasi & Keamanan → Ekstensi → PathZep**

### Build dari kode sumber

Memerlukan Xcode 15+.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Penggunaan

### Klik kanan di Finder

Setelah mengaktifkan ekstensi, klik kanan pada file atau folder apa pun di Finder untuk melihat:

- **Salin Path Absolut** — contoh: `/Users/me/projects/app/src/index.ts`
- **Salin Path Relatif** — contoh: `~/projects/app/src/index.ts`

### Pintasan global

1. Klik ikon `~/` di menu bar
2. Pilih **Pengaturan Pintasan…**
3. Klik pada kolom dan tekan kombinasi tombol yang diinginkan (contoh: `⌃⌥⌘C`)

Pintasan berfungsi secara global — salin path dari Finder saat berada di aplikasi mana pun.

## Tindakan Cepat (alternatif)

Jika Anda lebih suka Tindakan Cepat Automator daripada ekstensi Finder:

```bash
# Instal
./AutomatorActions/install-quick-actions.sh

# Hapus instalasi
./AutomatorActions/uninstall-quick-actions.sh
```

Tindakan Cepat muncul di bawah **klik kanan → Tindakan Cepat** di Finder.  
Anda dapat menetapkan pintasan keyboard di **Pengaturan Sistem → Keyboard → Pintasan Keyboard → Layanan**.

## Persyaratan

- macOS 12 Monterey atau lebih baru
- Mendukung Intel dan Apple Silicon

## Lisensi

[MIT](LICENSE)
