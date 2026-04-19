<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Kopier fil- og mappestier fra Finder til utklippstavlen — umiddelbart.
</p>

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

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><b>Norsk</b></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
