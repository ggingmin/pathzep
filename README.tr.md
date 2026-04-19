[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | **Türkçe** | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

Finder'dan dosya ve klasör yollarını panonuza kopyalayın — anında.

**Sağ tıklama bağlam menüsü** ve **genel klavye kısayolları** ile mutlak veya ev dizinine göre (`~/`) yolları kopyalamanızı sağlayan hafif, yerel bir macOS aracı.

## Özellikler

- **Mutlak yol** — Tam POSIX yolunu kopyalar (ör. `/Users/me/projects/app/src/index.ts`)
- **Göreli yol** — Tilde ile ev dizinine göre yolu kopyalar (ör. `~/projects/app/src/index.ts`)
- **Finder bağlam menüsü** — Finder'da herhangi bir dosya veya klasöre sağ tıklayın
- **Genel kısayollar** — Herhangi bir uygulamadan çalışan özel kısayol tuşları ayarlayın
- **Menü çubuğu uygulaması** — Menü çubuğunda sessizce çalışır, Dock simgesi yok
- **Çoklu seçim** — Birden fazla dosya seçin ve tüm yolları tek seferde kopyalayın (satır sonu ile ayrılmış)

## Kurulum

### İndirme (önerilen)

1. [Releases](https://github.com/ggingmin/pathzep/releases/latest) sayfasından en son DMG'yi indirin
2. DMG'yi açın ve **PathZep.app**'i **Uygulamalar**'a sürükleyin
3. PathZep'i başlatın
4. Finder eklentisini etkinleştirin:  
   **Sistem Ayarları → Gizlilik ve Güvenlik → Eklentiler → PathZep**

### Kaynak koddan derleme

Xcode 15 veya üstü gereklidir.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Kullanım

### Finder'da sağ tıklama

Eklentiyi etkinleştirdikten sonra, Finder'da herhangi bir dosya veya klasöre sağ tıklayarak şunları görebilirsiniz:

- **Copy Absolute Path** — ör. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — ör. `~/projects/app/src/index.ts`

### Genel kısayollar

1. Menü çubuğundaki `~/` simgesine tıklayın
2. **Kısayol Ayarları…**'nı seçin
3. Bir alana tıklayın ve istediğiniz tuş kombinasyonuna basın (ör. `⌃⌥⌘C`)

Kısayollar genel olarak çalışır — herhangi bir uygulamadayken Finder'dan yolları kopyalayın.

## Quick Actions (alternatif)

Finder eklentisi yerine Automator Quick Actions'ı tercih ediyorsanız:

```bash
# Kurulum
./AutomatorActions/install-quick-actions.sh

# Kaldırma
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions, Finder'da **sağ tıklama → Hızlı Eylemler** altında görünür.  
**Sistem Ayarları → Klavye → Klavye Kısayolları → Servisler** bölümünden klavye kısayolları atayabilirsiniz.

## Gereksinimler

- macOS 12 Monterey veya üstü
- Intel ve Apple Silicon desteklenir

## Lisans

[MIT](LICENSE)
