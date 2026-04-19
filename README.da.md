<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Kopiér fil- og mappestier fra Finder til din udklipsholder — øjeblikkeligt.
</p>

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

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><b>Dansk</b></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
