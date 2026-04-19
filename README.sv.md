# PathZep `~/`

Kopiera fil- och mappsökvägar från Finder till urklipp — direkt.

Ett lättviktigt, inbyggt macOS-verktyg som lägger till **högerklicksmeny** och **globala tangentbordsgenvägar** för att kopiera absoluta eller hemrelativa (`~/`) sökvägar.

## Funktioner

- **Absolut sökväg** — Kopierar den fullständiga POSIX-sökvägen (t.ex. `/Users/me/projects/app/src/index.ts`)
- **Relativ sökväg** — Kopierar den hemrelativa sökvägen med tilde (t.ex. `~/projects/app/src/index.ts`)
- **Finder-kontextmeny** — Högerklicka på valfri fil eller mapp i Finder
- **Globala genvägar** — Konfigurera egna snabbtangenter som fungerar från vilken app som helst
- **Menyradsapp** — Körs tyst i menyraden, ingen Dock-ikon
- **Flerval** — Markera flera filer och kopiera alla sökvägar på en gång (separerade med radbrytning)

## Installation

### Ladda ner (rekommenderat)

1. Ladda ner den senaste DMG:en från [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Öppna DMG:en och dra **PathZep.app** till **Program**
3. Starta PathZep
4. Aktivera Finder-tillägget:  
   **Systeminställningar → Integritet och säkerhet → Tillägg → PathZep**

### Bygg från källkod

Kräver Xcode 15 eller senare.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Användning

### Högerklicka i Finder

Efter att tillägget aktiverats, högerklicka på valfri fil eller mapp i Finder för att se:

- **Copy Absolute Path** — t.ex. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — t.ex. `~/projects/app/src/index.ts`

### Globala genvägar

1. Klicka på `~/`-ikonen i menyraden
2. Välj **Genväginställningar…**
3. Klicka på ett fält och tryck på önskad tangentkombination (t.ex. `⌃⌥⌘C`)

Genvägarna fungerar globalt — kopiera sökvägar från Finder oavsett vilken app du befinner dig i.

## Quick Actions (alternativ)

Om du föredrar Automator Quick Actions framför Finder-tillägget:

```bash
# Installera
./AutomatorActions/install-quick-actions.sh

# Avinstallera
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions visas under **högerklick → Snabbåtgärder** i Finder.  
Du kan tilldela tangentbordsgenvägar i **Systeminställningar → Tangentbord → Tangentbordsgenvägar → Tjänster**.

## Krav

- macOS 12 Monterey eller senare
- Stöd för Intel och Apple Silicon

## Licens

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
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><b>Svenska</b></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
