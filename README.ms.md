# PathZep `~/`

Salin laluan fail dan folder dari Finder ke papan keratan anda — serta-merta.

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

| | | |
|---|---|---|
| [English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) |
| [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) |
| [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) |
| [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) |
| [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) |
| [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) |
| [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) |
| [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) |
| **Bahasa Melayu** | [עברית](README.he.md) |  |

</details>
