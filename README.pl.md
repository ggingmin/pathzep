[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | **Polski** | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

Kopiuj ścieżki plików i folderów z Findera do schowka — natychmiast.

Lekkie, natywne narzędzie macOS, które dodaje **menu kontekstowe prawego przycisku myszy** oraz **globalne skróty klawiszowe** do kopiowania ścieżek bezwzględnych lub względnych do katalogu domowego (`~/`).

## Funkcje

- **Ścieżka bezwzględna** — Kopiuje pełną ścieżkę POSIX (np. `/Users/me/projects/app/src/index.ts`)
- **Ścieżka względna** — Kopiuje ścieżkę względną z tyldą (np. `~/projects/app/src/index.ts`)
- **Menu kontekstowe Findera** — Kliknij prawym przyciskiem myszy dowolny plik lub folder w Finderze
- **Globalne skróty** — Skonfiguruj własne skróty klawiszowe działające z dowolnej aplikacji
- **Aplikacja w pasku menu** — Działa cicho w pasku menu, bez ikony w Docku
- **Wielokrotny wybór** — Zaznacz wiele plików i skopiuj wszystkie ścieżki naraz (oddzielone nową linią)

## Instalacja

### Pobieranie (zalecane)

1. Pobierz najnowszy DMG z [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Otwórz DMG i przeciągnij **PathZep.app** do **Aplikacji**
3. Uruchom PathZep
4. Włącz rozszerzenie Findera:  
   **Ustawienia systemowe → Prywatność i ochrona → Rozszerzenia → PathZep**

### Kompilacja ze źródeł

Wymaga Xcode 15 lub nowszego.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Użytkowanie

### Prawy przycisk myszy w Finderze

Po włączeniu rozszerzenia kliknij prawym przyciskiem myszy dowolny plik lub folder w Finderze, aby zobaczyć:

- **Copy Absolute Path** — np. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — np. `~/projects/app/src/index.ts`

### Globalne skróty

1. Kliknij ikonę `~/` na pasku menu
2. Wybierz **Ustawienia skrótów…**
3. Kliknij pole i naciśnij wybraną kombinację klawiszy (np. `⌃⌥⌘C`)

Skróty działają globalnie — kopiuj ścieżki z Findera będąc w dowolnej aplikacji.

## Quick Actions (alternatywa)

Jeśli wolisz Automator Quick Actions zamiast rozszerzenia Findera:

```bash
# Instalacja
./AutomatorActions/install-quick-actions.sh

# Dezinstalacja
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions pojawiają się w **prawy przycisk myszy → Szybkie czynności** w Finderze.  
Skróty klawiszowe możesz przypisać w **Ustawienia systemowe → Klawiatura → Skróty klawiszowe → Usługi**.

## Wymagania

- macOS 12 Monterey lub nowszy
- Obsługa Intel i Apple Silicon

## Licencja

[MIT](LICENSE)
