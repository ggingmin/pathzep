# PathZep `~/`

Kopiér fil- og mappestier fra Finder til din udklipsholder — øjeblikkeligt.

Et letvægts, indbygget macOS-værktøj der tilføjer **højreklik-kontekstmenu** og **globale tastaturgenveje** til kopiering af absolutte eller hjemme-relative (`~/`) stier.

## Funktioner

- **Absolut sti** — Kopiér den fulde POSIX-sti (f.eks. `/Users/me/projects/app/src/index.ts`)
- **Relativ sti** — Kopiér den hjemme-relative sti med tilde (f.eks. `~/projects/app/src/index.ts`)
- **Finder-kontekstmenu** — Højreklik på enhver fil eller mappe i Finder
- **Globale genveje** — Konfigurér brugerdefinerede genvejstaster der virker fra enhver app
- **Menulinjeapp** — Kører stille i menulinjen, intet Dock-ikon
- **Flervalg** — Vælg flere filer og kopiér alle stier på én gang (adskilt med linjeskift)

## Installation

### Download (anbefalet)

1. Download den seneste DMG fra [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Åbn DMG'en og træk **PathZep.app** til **Programmer**
3. Start PathZep
4. Aktivér Finder-udvidelsen:  
   **Systemindstillinger → Anonymitet og sikkerhed → Udvidelser → PathZep**

### Byg fra kildekode

Kræver Xcode 15+.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Brug

### Højreklik i Finder

Når udvidelsen er aktiveret, kan du højreklikke på enhver fil eller mappe i Finder for at se:

- **Copy Absolute Path** — f.eks. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — f.eks. `~/projects/app/src/index.ts`

### Globale genveje

1. Klik på `~/`-ikonet i menulinjen
2. Vælg **Genvejsindstillinger…**
3. Klik på et felt og tryk på din ønskede tastekombination (f.eks. `⌃⌥⌘C`)

Genvejene virker globalt — kopiér stier fra Finder mens du er i en hvilken som helst app.

## Quick Actions (alternativ)

Hvis du foretrækker Automator Quick Actions frem for Finder-udvidelsen:

```bash
# Installér
./AutomatorActions/install-quick-actions.sh

# Afinstallér
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions vises under **højreklik → Hurtige handlinger** i Finder.  
Du kan tildele tastaturgenveje i **Systemindstillinger → Tastatur → Tastaturgenveje → Tjenester**.

## Krav

- macOS 12 Monterey eller nyere
- Intel og Apple Silicon understøttet

## Licens

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
| **Dansk** | [Suomi](README.fi.md) | [Norsk](README.nb.md) |
| [Bahasa Melayu](README.ms.md) | [עברית](README.he.md) |  |

</details>
