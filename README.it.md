<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Copia i percorsi di file e cartelle dal Finder negli appunti — istantaneamente.
</p>

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

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><b>Italiano</b></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
