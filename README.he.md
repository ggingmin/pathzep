[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | [Tiếng Việt](README.vi.md) | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | **עברית**

# PathZep `~/`

העתיקו נתיבי קבצים ותיקיות מ-Finder ללוח — מיידית.

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
