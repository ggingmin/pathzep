# PathZep `~/`

Copiez les chemins de fichiers et dossiers depuis Finder dans votre presse-papiers — instantanément.

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

| | | |
|---|---|---|
| [English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) |
| [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) |
| **Français** | [Deutsch](README.de.md) | [Português](README.pt-BR.md) |
| [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) |
| [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) |
| [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) |
| [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) |
| [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) |
| [Bahasa Melayu](README.ms.md) | [עברית](README.he.md) |  |

</details>
