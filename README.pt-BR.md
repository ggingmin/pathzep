# PathZep `~/`

Copie caminhos de arquivos e pastas do Finder para a área de transferência — instantaneamente.

Um utilitário macOS nativo e leve que adiciona **menu de contexto com clique direito** e **atalhos de teclado globais** para copiar caminhos absolutos ou relativos ao diretório home (`~/`).

## Recursos

- **Caminho absoluto** — Copia o caminho POSIX completo (ex.: `/Users/me/projects/app/src/index.ts`)
- **Caminho relativo** — Copia o caminho relativo ao home com til (ex.: `~/projects/app/src/index.ts`)
- **Menu de contexto do Finder** — Clique com o botão direito em qualquer arquivo ou pasta no Finder
- **Atalhos globais** — Configure teclas de atalho personalizadas que funcionam em qualquer app
- **App na barra de menus** — Roda silenciosamente na barra de menus, sem ícone no Dock
- **Seleção múltipla** — Selecione vários arquivos e copie todos os caminhos de uma vez (separados por quebra de linha)

## Instalação

### Download (recomendado)

1. Baixe o DMG mais recente em [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Abra o DMG e arraste **PathZep.app** para **Aplicativos**
3. Abra o PathZep
4. Ative a extensão do Finder:  
   **Ajustes do Sistema → Privacidade e Segurança → Extensões → PathZep**

### Compilar a partir do código-fonte

Requer Xcode 15 ou superior.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Uso

### Clique direito no Finder

Após ativar a extensão, clique com o botão direito em qualquer arquivo ou pasta no Finder para ver:

- **Copy Absolute Path** — ex.: `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — ex.: `~/projects/app/src/index.ts`

### Atalhos globais

1. Clique no ícone `~/` na barra de menus
2. Selecione **Configurações de atalhos…**
3. Clique em um campo e pressione a combinação de teclas desejada (ex.: `⌃⌥⌘C`)

Os atalhos funcionam globalmente — copie caminhos do Finder estando em qualquer app.

## Quick Actions (alternativa)

Se você prefere Automator Quick Actions em vez da extensão do Finder:

```bash
# Instalar
./AutomatorActions/install-quick-actions.sh

# Desinstalar
./AutomatorActions/uninstall-quick-actions.sh
```

As Quick Actions aparecem em **clique direito → Ações Rápidas** no Finder.  
Você pode atribuir atalhos de teclado em **Ajustes do Sistema → Teclado → Atalhos de Teclado → Serviços**.

## Requisitos

- macOS 12 Monterey ou posterior
- Compatível com Intel e Apple Silicon

## Licença

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>

<br>

| | | |
|---|---|---|
| [English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) |
| [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) |
| [Français](README.fr.md) | [Deutsch](README.de.md) | **Português** |
| [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) |
| [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) |
| [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) |
| [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) |
| [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) |
| [Bahasa Melayu](README.ms.md) | [עברית](README.he.md) |  |

</details>
