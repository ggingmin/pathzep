[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | **Русский** | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

Копируйте пути к файлам и папкам из Finder в буфер обмена — мгновенно.

Лёгкая нативная утилита для macOS, которая добавляет **контекстное меню по правому клику** и **глобальные сочетания клавиш** для копирования абсолютных или относительных (`~/`) путей.

## Возможности

- **Абсолютный путь** — Копирует полный POSIX-путь (например, `/Users/me/projects/app/src/index.ts`)
- **Относительный путь** — Копирует путь относительно домашней директории с тильдой (например, `~/projects/app/src/index.ts`)
- **Контекстное меню Finder** — Щёлкните правой кнопкой мыши по любому файлу или папке в Finder
- **Глобальные сочетания клавиш** — Настройте собственные горячие клавиши, работающие из любого приложения
- **Приложение в строке меню** — Работает тихо в строке меню, без значка в Dock
- **Множественный выбор** — Выберите несколько файлов и скопируйте все пути сразу (разделённые переводом строки)

## Установка

### Скачать (рекомендуется)

1. Скачайте последний DMG из [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Откройте DMG и перетащите **PathZep.app** в **Программы**
3. Запустите PathZep
4. Включите расширение Finder:  
   **Системные настройки → Конфиденциальность и безопасность → Расширения → PathZep**

### Сборка из исходного кода

Требуется Xcode 15 или новее.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Использование

### Правый клик в Finder

После включения расширения щёлкните правой кнопкой мыши по любому файлу или папке в Finder, чтобы увидеть:

- **Copy Absolute Path** — например, `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — например, `~/projects/app/src/index.ts`

### Глобальные сочетания клавиш

1. Нажмите на значок `~/` в строке меню
2. Выберите **Настройки сочетаний клавиш…**
3. Нажмите на поле и введите нужную комбинацию клавиш (например, `⌃⌥⌘C`)

Сочетания работают глобально — копируйте пути из Finder, находясь в любом приложении.

## Quick Actions (альтернатива)

Если вы предпочитаете Automator Quick Actions вместо расширения Finder:

```bash
# Установить
./AutomatorActions/install-quick-actions.sh

# Удалить
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions отображаются в **правый клик → Быстрые действия** в Finder.  
Вы можете назначить сочетания клавиш в **Системные настройки → Клавиатура → Сочетания клавиш → Службы**.

## Требования

- macOS 12 Monterey или новее
- Поддержка Intel и Apple Silicon

## Лицензия

[MIT](LICENSE)
