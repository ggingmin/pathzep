[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [ไทย](README.th.md) | [Tiếng Việt](README.vi.md) | [Bahasa Indonesia](README.id.md) | [Türkçe](README.tr.md)

# PathZep `~/`

คัดลอกเส้นทางไฟล์และโฟลเดอร์จาก Finder ไปยังคลิปบอร์ดของคุณ — ทันที

ยูทิลิตี้ macOS แบบเนทีฟน้ำหนักเบา ที่เพิ่ม**เมนูคลิกขวา**และ**ปุ่มลัดแป้นพิมพ์ทั่วระบบ**สำหรับคัดลอกเส้นทางแบบสัมบูรณ์หรือแบบสัมพัทธ์กับโฮม (`~/`)

## คุณสมบัติ

- **เส้นทางสัมบูรณ์** — คัดลอกเส้นทาง POSIX แบบเต็ม (เช่น `/Users/me/projects/app/src/index.ts`)
- **เส้นทางสัมพัทธ์** — คัดลอกเส้นทางสัมพัทธ์กับโฮมพร้อมเครื่องหมายทิลเดอ (เช่น `~/projects/app/src/index.ts`)
- **เมนูคลิกขวาใน Finder** — คลิกขวาที่ไฟล์หรือโฟลเดอร์ใดก็ได้ใน Finder
- **ปุ่มลัดทั่วระบบ** — ตั้งค่าปุ่มลัดที่กำหนดเองซึ่งใช้งานได้จากทุกแอป
- **แอปแถบเมนู** — ทำงานเงียบ ๆ ในแถบเมนู ไม่มีไอคอนใน Dock
- **เลือกหลายรายการ** — เลือกหลายไฟล์และคัดลอกเส้นทางทั้งหมดพร้อมกัน (คั่นด้วยบรรทัดใหม่)

## การติดตั้ง

### ดาวน์โหลด (แนะนำ)

1. ดาวน์โหลด DMG ล่าสุดจาก [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. เปิด DMG แล้วลาก **PathZep.app** ไปยัง **แอปพลิเคชัน**
3. เปิด PathZep
4. เปิดใช้งานส่วนขยาย Finder:  
   **การตั้งค่าระบบ → ความเป็นส่วนตัวและความปลอดภัย → ส่วนขยาย → PathZep**

### สร้างจากซอร์สโค้ด

ต้องใช้ Xcode 15+

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## การใช้งาน

### คลิกขวาใน Finder

หลังจากเปิดใช้งานส่วนขยายแล้ว ให้คลิกขวาที่ไฟล์หรือโฟลเดอร์ใดก็ได้ใน Finder เพื่อดู:

- **คัดลอกเส้นทางสัมบูรณ์** — เช่น `/Users/me/projects/app/src/index.ts`
- **คัดลอกเส้นทางสัมพัทธ์** — เช่น `~/projects/app/src/index.ts`

### ปุ่มลัดทั่วระบบ

1. คลิกไอคอน `~/` ในแถบเมนู
2. เลือก **ตั้งค่าปุ่มลัด…**
3. คลิกที่ช่องแล้วกดคีย์ผสมที่ต้องการ (เช่น `⌃⌥⌘C`)

ปุ่มลัดทำงานได้ทั่วระบบ — คัดลอกเส้นทางจาก Finder ขณะอยู่ในแอปใดก็ได้

## การดำเนินการด่วน (ทางเลือก)

หากคุณต้องการใช้การดำเนินการด่วนของ Automator แทนส่วนขยาย Finder:

```bash
# ติดตั้ง
./AutomatorActions/install-quick-actions.sh

# ถอนการติดตั้ง
./AutomatorActions/uninstall-quick-actions.sh
```

การดำเนินการด่วนจะปรากฏใต้ **คลิกขวา → การดำเนินการด่วน** ใน Finder  
คุณสามารถกำหนดปุ่มลัดแป้นพิมพ์ได้ใน **การตั้งค่าระบบ → แป้นพิมพ์ → ปุ่มลัดแป้นพิมพ์ → บริการ**

## ความต้องการของระบบ

- macOS 12 Monterey หรือใหม่กว่า
- รองรับทั้ง Intel และ Apple Silicon

## สัญญาอนุญาต

[MIT](LICENSE)
