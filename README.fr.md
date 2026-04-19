<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Copiez les chemins de fichiers et dossiers depuis Finder dans votre presse-papiers — instantanément.
</p>

Un utilitaire macOS natif et léger qui ajoute un **menu contextuel au clic droit** et des **raccourcis clavier globaux** pour copier des chemins absolus ou relatifs au répertoire personnel (`~/`).

## Fonctionnalités

- **Chemin absolu** — Copie le chemin POSIX complet (ex. `/Users/me/projects/app/src/index.ts`)
- **Chemin relatif** — Copie le chemin relatif au répertoire personnel avec tilde (ex. `~/projects/app/src/index.ts`)
- **Menu contextuel Finder** — Faites un clic droit sur n'importe quel fichier ou dossier dans Finder
- **Raccourcis globaux** — Configurez des raccourcis personnalisés utilisables depuis n'importe quelle app
- **App dans la barre des menus** — Fonctionne discrètement dans la barre des menus, sans icône dans le Dock
- **Sélection multiple** — Sélectionnez plusieurs fichiers et copiez tous les chemins en une fois (séparés par des sauts de ligne)

## Installation

### Téléchargement (recommandé)

1. Téléchargez le dernier DMG depuis [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Ouvrez le DMG et glissez **PathZep.app** dans **Applications**
3. Lancez PathZep
4. Activez l'extension Finder :  
   **Réglages du système → Confidentialité et sécurité → Extensions → PathZep**

### Compiler depuis les sources

Nécessite Xcode 15 ou supérieur.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Utilisation

### Clic droit dans Finder

Après avoir activé l'extension, faites un clic droit sur n'importe quel fichier ou dossier dans Finder pour voir :

- **Copy Absolute Path** — ex. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — ex. `~/projects/app/src/index.ts`

### Raccourcis globaux

1. Cliquez sur l'icône `~/` dans la barre des menus
2. Sélectionnez **Réglages des raccourcis…**
3. Cliquez sur un champ et appuyez sur la combinaison de touches souhaitée (ex. `⌃⌥⌘C`)

Les raccourcis fonctionnent globalement — copiez des chemins depuis Finder depuis n'importe quelle app.

## Quick Actions (alternative)

Si vous préférez les Automator Quick Actions à l'extension Finder :

```bash
# Installer
./AutomatorActions/install-quick-actions.sh

# Désinstaller
./AutomatorActions/uninstall-quick-actions.sh
```

Les Quick Actions apparaissent sous **clic droit → Actions rapides** dans Finder.  
Vous pouvez attribuer des raccourcis clavier dans **Réglages du système → Clavier → Raccourcis clavier → Services**.

## Configuration requise

- macOS 12 Monterey ou ultérieur
- Intel et Apple Silicon pris en charge

## Licence

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><b>Français</b></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
