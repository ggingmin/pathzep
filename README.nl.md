# PathZep `~/`

Kopieer bestands- en mappaden vanuit Finder naar je klembord — direct.

Een lichtgewicht, native macOS-hulpprogramma dat een **rechtermuisknop-contextmenu** en **globale sneltoetsen** toevoegt voor het kopiëren van absolute of home-relatieve (`~/`) paden.

## Functies

- **Absoluut pad** — Kopieer het volledige POSIX-pad (bijv. `/Users/me/projects/app/src/index.ts`)
- **Relatief pad** — Kopieer het home-relatieve pad met tilde (bijv. `~/projects/app/src/index.ts`)
- **Finder-contextmenu** — Klik met de rechtermuisknop op een bestand of map in Finder
- **Globale sneltoetsen** — Stel aangepaste sneltoetsen in die vanuit elke app werken
- **Menubalk-app** — Draait stil in de menubalk, zonder Dock-pictogram
- **Meervoudige selectie** — Selecteer meerdere bestanden en kopieer alle paden tegelijk (gescheiden door nieuwe regels)

## Installatie

### Downloaden (aanbevolen)

1. Download de nieuwste DMG van [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Open de DMG en sleep **PathZep.app** naar **Programma's**
3. Start PathZep
4. Schakel de Finder-extensie in:  
   **Systeeminstellingen → Privacy en beveiliging → Extensies → PathZep**

### Bouwen vanuit broncode

Vereist Xcode 15 of nieuwer.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Gebruik

### Rechtermuisknop in Finder

Na het inschakelen van de extensie, klik met de rechtermuisknop op een bestand of map in Finder om te zien:

- **Copy Absolute Path** — bijv. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — bijv. `~/projects/app/src/index.ts`

### Globale sneltoetsen

1. Klik op het `~/`-pictogram in de menubalk
2. Selecteer **Sneltoetsinstellingen…**
3. Klik op een veld en druk op de gewenste toetscombinatie (bijv. `⌃⌥⌘C`)

Sneltoetsen werken globaal — kopieer paden vanuit Finder terwijl je in een andere app bent.

## Quick Actions (alternatief)

Als je de voorkeur geeft aan Automator Quick Actions boven de Finder-extensie:

```bash
# Installeren
./AutomatorActions/install-quick-actions.sh

# Verwijderen
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions verschijnen onder **rechtermuisknop → Snelle taken** in Finder.  
Je kunt sneltoetsen toewijzen in **Systeeminstellingen → Toetsenbord → Toetsenbordsnelkoppelingen → Voorzieningen**.

## Vereisten

- macOS 12 Monterey of nieuwer
- Intel en Apple Silicon worden ondersteund

## Licentie

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
| [Italiano](README.it.md) | **Nederlands** | [Türkçe](README.tr.md) |
| [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) |
| [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) |
| [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) |
| [Bahasa Melayu](README.ms.md) | [עברית](README.he.md) |  |

</details>
