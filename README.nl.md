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

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><b>Nederlands</b></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
