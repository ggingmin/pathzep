# PathZep `~/`

Kopiere Datei- und Ordnerpfade aus dem Finder in die Zwischenablage — sofort.

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

| | | |
|---|---|---|
| [English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) |
| [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) |
| [Français](README.fr.md) | **Deutsch** | [Português](README.pt-BR.md) |
| [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) |
| [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) |
| [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) |
| [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) |
| [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) |
| [Bahasa Melayu](README.ms.md) | [עברית](README.he.md) |  |

</details>
