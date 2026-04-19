[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | **العربية** | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

انسخ مسارات الملفات والمجلدات من Finder إلى الحافظة — فورًا.

أداة macOS أصلية وخفيفة تضيف **قائمة سياق بالنقر بزر الماوس الأيمن** و**اختصارات لوحة مفاتيح عامة** لنسخ المسارات المطلقة أو النسبية لمجلد المستخدم (`~/`).

## الميزات

- **المسار المطلق** — نسخ مسار POSIX الكامل (مثال: `/Users/me/projects/app/src/index.ts`)
- **المسار النسبي** — نسخ المسار النسبي لمجلد المستخدم مع علامة التلدة (مثال: `~/projects/app/src/index.ts`)
- **قائمة سياق Finder** — انقر بزر الماوس الأيمن على أي ملف أو مجلد في Finder
- **اختصارات عامة** — قم بتعيين مفاتيح اختصار مخصصة تعمل من أي تطبيق
- **تطبيق شريط القوائم** — يعمل بهدوء في شريط القوائم، بدون أيقونة في Dock
- **تحديد متعدد** — حدد عدة ملفات وانسخ جميع المسارات دفعة واحدة (مفصولة بأسطر جديدة)

## التثبيت

### التنزيل (موصى به)

1. قم بتنزيل أحدث DMG من [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. افتح DMG واسحب **PathZep.app** إلى **التطبيقات**
3. شغّل PathZep
4. فعّل إضافة Finder:  
   **إعدادات النظام → الخصوصية والأمان → الإضافات → PathZep**

### البناء من المصدر

يتطلب Xcode 15 أو أحدث.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## الاستخدام

### النقر بزر الماوس الأيمن في Finder

بعد تفعيل الإضافة، انقر بزر الماوس الأيمن على أي ملف أو مجلد في Finder لترى:

- **Copy Absolute Path** — مثال: `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — مثال: `~/projects/app/src/index.ts`

### الاختصارات العامة

1. انقر على أيقونة `~/` في شريط القوائم
2. اختر **إعدادات الاختصارات…**
3. انقر على حقل واضغط على مجموعة المفاتيح المطلوبة (مثال: `⌃⌥⌘C`)

تعمل الاختصارات بشكل عام — انسخ المسارات من Finder أثناء استخدام أي تطبيق.

## Quick Actions (بديل)

إذا كنت تفضل Automator Quick Actions بدلاً من إضافة Finder:

```bash
# تثبيت
./AutomatorActions/install-quick-actions.sh

# إلغاء التثبيت
./AutomatorActions/uninstall-quick-actions.sh
```

تظهر Quick Actions ضمن **النقر بزر الماوس الأيمن → إجراءات سريعة** في Finder.  
يمكنك تعيين اختصارات لوحة المفاتيح في **إعدادات النظام → لوحة المفاتيح → اختصارات لوحة المفاتيح → الخدمات**.

## المتطلبات

- macOS 12 Monterey أو أحدث
- يدعم Intel و Apple Silicon

## الترخيص

[MIT](LICENSE)
