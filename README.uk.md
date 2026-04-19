[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | **Українська** | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

Копіюйте шляхи до файлів і папок з Finder у буфер обміну — миттєво.

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
