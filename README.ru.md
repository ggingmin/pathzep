<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Копируйте пути к файлам и папкам из Finder в буфер обмена — мгновенно.
</p>

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

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><b>Русский</b></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
