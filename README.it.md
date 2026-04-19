[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | **Italiano** | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

Copia i percorsi di file e cartelle dal Finder negli appunti — istantaneamente.

Un'utility macOS nativa e leggera che aggiunge un **menu contestuale con clic destro** e **scorciatoie da tastiera globali** per copiare percorsi assoluti o relativi alla home (`~/`).

## Funzionalità

- **Percorso assoluto** — Copia il percorso POSIX completo (es. `/Users/me/projects/app/src/index.ts`)
- **Percorso relativo** — Copia il percorso relativo alla home con tilde (es. `~/projects/app/src/index.ts`)
- **Menu contestuale di Finder** — Fai clic destro su qualsiasi file o cartella nel Finder
- **Scorciatoie globali** — Configura tasti di scelta rapida personalizzati che funzionano da qualsiasi app
- **App nella barra dei menu** — Funziona silenziosamente nella barra dei menu, senza icona nel Dock
- **Selezione multipla** — Seleziona più file e copia tutti i percorsi in una volta (separati da a capo)

## Installazione

### Download (consigliato)

1. Scarica l'ultimo DMG da [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Apri il DMG e trascina **PathZep.app** in **Applicazioni**
3. Avvia PathZep
4. Abilita l'estensione Finder:  
   **Impostazioni di Sistema → Privacy e sicurezza → Estensioni → PathZep**

### Compilare dal codice sorgente

Richiede Xcode 15 o successivo.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Utilizzo

### Clic destro nel Finder

Dopo aver abilitato l'estensione, fai clic destro su qualsiasi file o cartella nel Finder per vedere:

- **Copy Absolute Path** — es. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — es. `~/projects/app/src/index.ts`

### Scorciatoie globali

1. Fai clic sull'icona `~/` nella barra dei menu
2. Seleziona **Impostazioni scorciatoie…**
3. Fai clic su un campo e premi la combinazione di tasti desiderata (es. `⌃⌥⌘C`)

Le scorciatoie funzionano globalmente — copia i percorsi dal Finder mentre sei in qualsiasi app.

## Quick Actions (alternativa)

Se preferisci le Automator Quick Actions all'estensione Finder:

```bash
# Installa
./AutomatorActions/install-quick-actions.sh

# Disinstalla
./AutomatorActions/uninstall-quick-actions.sh
```

Le Quick Actions appaiono sotto **clic destro → Azioni rapide** nel Finder.  
Puoi assegnare scorciatoie da tastiera in **Impostazioni di Sistema → Tastiera → Abbreviazioni da tastiera → Servizi**.

## Requisiti

- macOS 12 Monterey o successivo
- Supporto per Intel e Apple Silicon

## Licenza

[MIT](LICENSE)
