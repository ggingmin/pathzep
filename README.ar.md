<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  انسخ مسارات الملفات والمجلدات من Finder إلى الحافظة — فورًا.
</p>

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

---

<details>
<summary>🌐 Available in 26 languages</summary>
<br>

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><b>العربية</b></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
