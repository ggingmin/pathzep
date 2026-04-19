<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  העתיקו נתיבי קבצים ותיקיות מ-Finder ללוח — מיידית.
</p>

כלי macOS קל משקל ומקורי שמוסיף **תפריט הקשר בלחיצה ימנית** ו**קיצורי מקלדת גלובליים** להעתקת נתיבים מוחלטים או יחסיים לתיקיית הבית (`~/`).

## תכונות

- **נתיב מוחלט** — העתקת נתיב POSIX מלא (לדוגמה `/Users/me/projects/app/src/index.ts`)
- **נתיב יחסי** — העתקת נתיב יחסי לתיקיית הבית עם טילדה (לדוגמה `~/projects/app/src/index.ts`)
- **תפריט הקשר ב-Finder** — לחצו לחיצה ימנית על כל קובץ או תיקייה ב-Finder
- **קיצורים גלובליים** — הגדירו מקשי קיצור מותאמים אישית שעובדים מכל אפליקציה
- **אפליקציית שורת תפריטים** — פועלת בשקט בשורת התפריטים, ללא סמל ב-Dock
- **בחירה מרובה** — בחרו מספר קבצים והעתיקו את כל הנתיבים בבת אחת (מופרדים בשורות חדשות)

## התקנה

### הורדה (מומלץ)

1. הורידו את ה-DMG העדכני ביותר מ-[Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. פתחו את ה-DMG וגררו את **PathZep.app** ל-**Applications**
3. הפעילו את PathZep
4. אפשרו את הרחבת Finder:  
   **הגדרות מערכת → פרטיות ואבטחה → הרחבות → PathZep**

### בנייה מקוד מקור

דורש Xcode 15+.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## שימוש

### לחיצה ימנית ב-Finder

לאחר הפעלת ההרחבה, לחצו לחיצה ימנית על כל קובץ או תיקייה ב-Finder כדי לראות:

- **Copy Absolute Path** — לדוגמה `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — לדוגמה `~/projects/app/src/index.ts`

### קיצורים גלובליים

1. לחצו על סמל `~/` בשורת התפריטים
2. בחרו **הגדרות קיצורים…**
3. לחצו על שדה ולחצו על שילוב המקשים הרצוי (לדוגמה `⌃⌥⌘C`)

הקיצורים פועלים באופן גלובלי — העתיקו נתיבים מ-Finder בזמן שאתם בכל אפליקציה.

## Quick Actions (חלופה)

אם אתם מעדיפים Automator Quick Actions על פני הרחבת Finder:

```bash
# התקנה
./AutomatorActions/install-quick-actions.sh

# הסרת התקנה
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions מופיעים תחת **לחיצה ימנית → פעולות מהירות** ב-Finder.  
ניתן להקצות קיצורי מקלדת ב-**הגדרות מערכת → מקלדת → קיצורי מקלדת → שירותים**.

## דרישות

- macOS 12 Monterey ומעלה
- תמיכה ב-Intel וב-Apple Silicon

## רישיון

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
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><b>עברית</b></td><td></td></tr>
</table>

</details>
