[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [ไทย](README.th.md) | [Tiếng Việt](README.vi.md) | [Bahasa Indonesia](README.id.md) | [Türkçe](README.tr.md)

# PathZep `~/`

Finder'dan dosya ve klasör yollarını panonuza kopyalayın — anında.

Mutlak veya ana dizine göre (`~/`) yolları kopyalamak için **sağ tık bağlam menüsü** ve **genel klavye kısayolları** ekleyen hafif, yerel bir macOS aracı.

## Özellikler

- **Mutlak yol** — Tam POSIX yolunu kopyalayın (örn. `/Users/me/projects/app/src/index.ts`)
- **Göreli yol** — Tilde ile ana dizine göre yolu kopyalayın (örn. `~/projects/app/src/index.ts`)
- **Finder bağlam menüsü** — Finder'da herhangi bir dosya veya klasöre sağ tıklayın
- **Genel kısayollar** — Herhangi bir uygulamadan çalışan özel kısayol tuşları ayarlayın
- **Menü çubuğu uygulaması** — Menü çubuğunda sessizce çalışır, Dock'ta simge yok
- **Çoklu seçim** — Birden fazla dosya seçin ve tüm yolları aynı anda kopyalayın (yeni satırla ayrılmış)

## Kurulum

### İndirme (önerilen)

1. [Sürümler](https://github.com/ggingmin/pathzep/releases/latest) sayfasından en son DMG'yi indirin
2. DMG'yi açın ve **PathZep.app**'i **Uygulamalar**'a sürükleyin
3. PathZep'i başlatın
4. Finder eklentisini etkinleştirin:  
   **Sistem Ayarları → Gizlilik ve Güvenlik → Eklentiler → PathZep**

### Kaynak koddan derleme

Xcode 15+ gereklidir.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Kullanım

### Finder'da sağ tıklama

Eklentiyi etkinleştirdikten sonra, Finder'da herhangi bir dosya veya klasöre sağ tıklayarak şunları görebilirsiniz:

- **Mutlak Yolu Kopyala** — örn. `/Users/me/projects/app/src/index.ts`
- **Göreli Yolu Kopyala** — örn. `~/projects/app/src/index.ts`

### Genel kısayollar

1. Menü çubuğundaki `~/` simgesine tıklayın
2. **Kısayol Ayarları…**'nı seçin
3. Bir alana tıklayın ve istediğiniz tuş kombinasyonuna basın (örn. `⌃⌥⌘C`)

Kısayollar genel olarak çalışır — herhangi bir uygulamadayken Finder'dan yolları kopyalayın.

## Hızlı Eylemler (alternatif)

Finder eklentisi yerine Automator Hızlı Eylemlerini tercih ediyorsanız:

```bash
# Kur
./AutomatorActions/install-quick-actions.sh

# Kaldır
./AutomatorActions/uninstall-quick-actions.sh
```

Hızlı Eylemler, Finder'da **sağ tık → Hızlı Eylemler** altında görünür.  
**Sistem Ayarları → Klavye → Klavye Kısayolları → Servisler** bölümünden klavye kısayolları atayabilirsiniz.

## Gereksinimler

- macOS 12 Monterey veya üzeri
- Intel ve Apple Silicon desteklenir

## Lisans

[MIT](LICENSE)
