<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Копіюйте шляхи до файлів і папок з Finder у буфер обміну — миттєво.
</p>

Легка, нативна утиліта для macOS, яка додає **контекстне меню правої кнопки миші** та **глобальні клавіатурні скорочення** для копіювання абсолютних або відносних (`~/`) шляхів.

## Можливості

- **Абсолютний шлях** — Копіює повний POSIX-шлях (напр. `/Users/me/projects/app/src/index.ts`)
- **Відносний шлях** — Копіює шлях відносно домашньої директорії з тильдою (напр. `~/projects/app/src/index.ts`)
- **Контекстне меню Finder** — Клацніть правою кнопкою миші на будь-якому файлі чи папці у Finder
- **Глобальні скорочення** — Налаштуйте власні гарячі клавіші, що працюють з будь-якого додатку
- **Додаток у рядку меню** — Працює тихо в рядку меню, без іконки в Dock
- **Множинний вибір** — Виберіть кілька файлів і скопіюйте всі шляхи одразу (розділені переносом рядка)

## Встановлення

### Завантаження (рекомендовано)

1. Завантажте останній DMG з [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Відкрийте DMG і перетягніть **PathZep.app** до **Програми**
3. Запустіть PathZep
4. Увімкніть розширення Finder:  
   **Системні параметри → Конфіденційність і безпека → Розширення → PathZep**

### Збірка з вихідного коду

Потрібен Xcode 15 або новіший.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Використання

### Правий клік у Finder

Після увімкнення розширення клацніть правою кнопкою миші на будь-якому файлі чи папці у Finder, щоб побачити:

- **Copy Absolute Path** — напр. `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — напр. `~/projects/app/src/index.ts`

### Глобальні скорочення

1. Натисніть на іконку `~/` у рядку меню
2. Виберіть **Налаштування скорочень…**
3. Клацніть на поле та натисніть бажану комбінацію клавіш (напр. `⌃⌥⌘C`)

Скорочення працюють глобально — копіюйте шляхи з Finder, перебуваючи в будь-якому додатку.

## Quick Actions (альтернатива)

Якщо ви надаєте перевагу Automator Quick Actions замість розширення Finder:

```bash
# Встановити
./AutomatorActions/install-quick-actions.sh

# Видалити
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions з'являються у **правий клік → Швидкі дії** у Finder.  
Ви можете призначити клавіатурні скорочення в **Системні параметри → Клавіатура → Клавіатурні скорочення → Служби**.

## Вимоги

- macOS 12 Monterey або новіший
- Підтримка Intel та Apple Silicon

## Ліцензія

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
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><b>Українська</b></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
