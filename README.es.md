<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Copia rutas de archivos y carpetas desde Finder a tu portapapeles — al instante.
</p>

Una utilidad macOS nativa y ligera que añade un **menú contextual de clic derecho** y **atajos de teclado globales** para copiar rutas absolutas o relativas al directorio home (`~/`).

## Características

- **Ruta absoluta** — Copia la ruta POSIX completa (ej. `/Users/me/projects/app/src/index.ts`)
- **Ruta relativa** — Copia la ruta relativa al home con tilde (ej. `~/projects/app/src/index.ts`)
- **Menú contextual de Finder** — Haz clic derecho en cualquier archivo o carpeta en Finder
- **Atajos globales** — Configura teclas de acceso rápido personalizadas que funcionan desde cualquier app
- **App en la barra de menús** — Se ejecuta silenciosamente en la barra de menús, sin icono en el Dock
- **Selección múltiple** — Selecciona varios archivos y copia todas las rutas a la vez (separadas por saltos de línea)

## Instalación

### Descarga (recomendado)

1. Descarga el último DMG desde [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Abre el DMG y arrastra **PathZep.app** a **Aplicaciones**
3. Abre PathZep
4. Activa la extensión de Finder:  
   **Ajustes del Sistema → Privacidad y seguridad → Extensiones → PathZep**

### Compilar desde el código fuente

Requiere Xcode 15 o superior.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Uso

### Clic derecho en Finder

Después de activar la extensión, haz clic derecho en cualquier archivo o carpeta en Finder para ver:

- **Copy Absolute Path** — ej. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — ej. `~/projects/app/src/index.ts`

### Atajos globales

1. Haz clic en el icono `~/` en la barra de menús
2. Selecciona **Configuración de atajos…**
3. Haz clic en un campo y presiona la combinación de teclas deseada (ej. `⌃⌥⌘C`)

Los atajos funcionan globalmente — copia rutas desde Finder estando en cualquier app.

## Quick Actions (alternativa)

Si prefieres Automator Quick Actions en lugar de la extensión de Finder:

```bash
# Instalar
./AutomatorActions/install-quick-actions.sh

# Desinstalar
./AutomatorActions/uninstall-quick-actions.sh
```

Las Quick Actions aparecen en **clic derecho → Acciones rápidas** en Finder.  
Puedes asignar atajos de teclado en **Ajustes del Sistema → Teclado → Atajos de teclado → Servicios**.

## Requisitos

- macOS 12 Monterey o posterior
- Compatible con Intel y Apple Silicon

## Licencia

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><b>Español</b></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
