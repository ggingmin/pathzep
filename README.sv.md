[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | **Svenska** | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

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
