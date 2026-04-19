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

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><b>Türkçe</b></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
