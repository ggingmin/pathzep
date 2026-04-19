[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | **Español** | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

Copia rutas de archivos y carpetas desde Finder a tu portapapeles — al instante.

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
