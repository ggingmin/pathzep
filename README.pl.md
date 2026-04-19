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
    <tr><td><b>Polski</b></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
