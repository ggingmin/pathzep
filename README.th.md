# PathZep `~/`

คัดลอกเส้นทางไฟล์และโฟลเดอร์จาก Finder ไปยังคลิปบอร์ด — ทันที

ยูทิลิตี้ macOS แบบเนทีฟที่เบาและรวดเร็ว เพิ่ม**เมนูคลิกขวา**และ**คีย์ลัดแป้นพิมพ์ทั่วระบบ**สำหรับคัดลอกเส้นทางแบบสัมบูรณ์หรือแบบสัมพัทธ์กับโฮม (`~/`)

## คุณสมบัติ

- **เส้นทางสัมบูรณ์** — คัดลอกเส้นทาง POSIX แบบเต็ม (เช่น `/Users/me/projects/app/src/index.ts`)
- **เส้นทางสัมพัทธ์** — คัดลอกเส้นทางสัมพัทธ์กับโฮมพร้อมเครื่องหมายตัวหนอน (เช่น `~/projects/app/src/index.ts`)
- **เมนูบริบท Finder** — คลิกขวาที่ไฟล์หรือโฟลเดอร์ใดก็ได้ใน Finder
- **คีย์ลัดทั่วระบบ** — ตั้งค่าคีย์ลัดที่กำหนดเองซึ่งใช้งานได้จากทุกแอป
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

ต้องใช้ Xcode 15 ขึ้นไป

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## การใช้งาน

### คลิกขวาใน Finder

หลังจากเปิดใช้งานส่วนขยายแล้ว คลิกขวาที่ไฟล์หรือโฟลเดอร์ใดก็ได้ใน Finder จะเห็น:

- **Copy Absolute Path** — เช่น `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — เช่น `~/projects/app/src/index.ts`

### คีย์ลัดทั่วระบบ

1. คลิกไอคอน `~/` ในแถบเมนู
2. เลือก **ตั้งค่าคีย์ลัด…**
3. คลิกที่ช่องแล้วกดคีย์ผสมที่ต้องการ (เช่น `⌃⌥⌘C`)

คีย์ลัดทำงานทั่วระบบ — คัดลอกเส้นทางจาก Finder ขณะอยู่ในแอปใดก็ได้

## Quick Actions (ทางเลือก)

หากคุณชอบ Automator Quick Actions มากกว่าส่วนขยาย Finder:

```bash
# ติดตั้ง
./AutomatorActions/install-quick-actions.sh

# ถอนการติดตั้ง
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions จะปรากฏใต้ **คลิกขวา → การทำงานด่วน** ใน Finder  
คุณสามารถกำหนดคีย์ลัดได้ใน **การตั้งค่าระบบ → แป้นพิมพ์ → คีย์ลัดแป้นพิมพ์ → บริการ**

## ความต้องการของระบบ

- macOS 12 Monterey หรือใหม่กว่า
- รองรับ Intel และ Apple Silicon

## สัญญาอนุญาต

[MIT](LICENSE)

---

<details>
<summary>🌐 Available in 26 languages</summary>

<br>

| | | |
|---|---|---|
| [English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) |
| [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) |
| [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) |
| [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) |
| [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) |
| [Tiếng Việt](README.vi.md) | **ไทย** | [Bahasa Indonesia](README.id.md) |
| [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) |
| [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) |
| [Bahasa Melayu](README.ms.md) | [עברית](README.he.md) |  |

</details>
