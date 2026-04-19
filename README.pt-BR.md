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

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><b>Português</b></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
