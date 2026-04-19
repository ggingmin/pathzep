<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Kopiere Datei- und Ordnerpfade aus dem Finder in die Zwischenablage — sofort.
</p>

Ein leichtgewichtiges, natives macOS-Dienstprogramm mit **Rechtsklick-Kontextmenü** und **globalen Tastaturkurzbefehlen** zum Kopieren absoluter oder Home-relativer (`~/`) Pfade.

## Funktionen

- **Absoluter Pfad** — Kopiert den vollständigen POSIX-Pfad (z. B. `/Users/me/projects/app/src/index.ts`)
- **Relativer Pfad** — Kopiert den Home-relativen Pfad mit Tilde (z. B. `~/projects/app/src/index.ts`)
- **Finder-Kontextmenü** — Rechtsklick auf beliebige Dateien oder Ordner im Finder
- **Globale Kurzbefehle** — Konfiguriere eigene Tastenkombinationen, die in jeder App funktionieren
- **Menüleisten-App** — Läuft unauffällig in der Menüleiste, ohne Dock-Symbol
- **Mehrfachauswahl** — Wähle mehrere Dateien aus und kopiere alle Pfade auf einmal (zeilengetrennt)

## Installation

### Download (empfohlen)

1. Lade das neueste DMG von [Releases](https://github.com/ggingmin/pathzep/releases/latest) herunter
2. Öffne das DMG und ziehe **PathZep.app** in den **Programme**-Ordner
3. Starte PathZep
4. Aktiviere die Finder-Erweiterung:  
   **Systemeinstellungen → Datenschutz & Sicherheit → Erweiterungen → PathZep**

### Aus dem Quellcode kompilieren

Erfordert Xcode 15 oder neuer.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Verwendung

### Rechtsklick im Finder

Nach Aktivierung der Erweiterung erscheinen beim Rechtsklick auf eine Datei oder einen Ordner im Finder:

- **Copy Absolute Path** — z. B. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — z. B. `~/projects/app/src/index.ts`

### Globale Kurzbefehle

1. Klicke auf das `~/`-Symbol in der Menüleiste
2. Wähle **Kurzbefehl-Einstellungen…**
3. Klicke auf ein Feld und drücke die gewünschte Tastenkombination (z. B. `⌃⌥⌘C`)

Kurzbefehle funktionieren global — kopiere Pfade aus dem Finder, egal in welcher App du dich befindest.

## Quick Actions (Alternative)

Falls du Automator Quick Actions der Finder-Erweiterung vorziehst:

```bash
# Installieren
./AutomatorActions/install-quick-actions.sh

# Deinstallieren
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions erscheinen unter **Rechtsklick → Schnellaktionen** im Finder.  
Tastaturkurzbefehle kannst du unter **Systemeinstellungen → Tastatur → Tastaturkurzbefehle → Dienste** zuweisen.

## Voraussetzungen

- macOS 12 Monterey oder neuer
- Intel und Apple Silicon werden unterstützt

## Lizenz

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><b>Deutsch</b></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
