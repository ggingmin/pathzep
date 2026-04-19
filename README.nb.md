# PathZep `~/`

Kopier fil- og mappestier fra Finder til utklippstavlen — umiddelbart.

Et lettvekts, innebygd macOS-verktøy som legger til **høyreklikk-kontekstmeny** og **globale hurtigtaster** for kopiering av absolutte eller hjemme-relative (`~/`) stier.

## Funksjoner

- **Absolutt sti** — Kopier den fullstendige POSIX-stien (f.eks. `/Users/me/projects/app/src/index.ts`)
- **Relativ sti** — Kopier den hjemme-relative stien med tilde (f.eks. `~/projects/app/src/index.ts`)
- **Finder-kontekstmeny** — Høyreklikk på en hvilken som helst fil eller mappe i Finder
- **Globale snarveier** — Konfigurer egendefinerte hurtigtaster som fungerer fra alle apper
- **Menylinjeapp** — Kjører stille i menylinjen, uten Dock-ikon
- **Flervalg** — Velg flere filer og kopier alle stier på én gang (adskilt med linjeskift)

## Installasjon

### Last ned (anbefalt)

1. Last ned den nyeste DMG-en fra [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Åpne DMG-en og dra **PathZep.app** til **Programmer**
3. Start PathZep
4. Aktiver Finder-utvidelsen:  
   **Systeminnstillinger → Personvern og sikkerhet → Utvidelser → PathZep**

### Bygg fra kildekode

Krever Xcode 15+.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Bruk

### Høyreklikk i Finder

Etter at utvidelsen er aktivert, høyreklikk på en hvilken som helst fil eller mappe i Finder for å se:

- **Copy Absolute Path** — f.eks. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — f.eks. `~/projects/app/src/index.ts`

### Globale snarveier

1. Klikk på `~/`-ikonet i menylinjen
2. Velg **Snarveisinnstillinger…**
3. Klikk på et felt og trykk på ønsket tastekombinasjon (f.eks. `⌃⌥⌘C`)

Snarveiene fungerer globalt — kopier stier fra Finder mens du er i en hvilken som helst app.

## Quick Actions (alternativ)

Hvis du foretrekker Automator Quick Actions fremfor Finder-utvidelsen:

```bash
# Installer
./AutomatorActions/install-quick-actions.sh

# Avinstaller
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions vises under **høyreklikk → Hurtighandlinger** i Finder.  
Du kan tilordne hurtigtaster i **Systeminnstillinger → Tastatur → Tastatursnarveier → Tjenester**.

## Krav

- macOS 12 Monterey eller nyere
- Intel og Apple Silicon støttet

## Lisens

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
| [Dansk](README.da.md) | [Suomi](README.fi.md) | **Norsk** |
| [Bahasa Melayu](README.ms.md) | [עברית](README.he.md) |  |

</details>
