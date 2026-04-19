<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  คัดลอกเส้นทางไฟล์และโฟลเดอร์จาก Finder ไปยังคลิปบอร์ด — ทันที
</p>

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

<table>
    <tr><td><a href="README.md">English</a></td><td><a href="README.ko.md">한국어</a></td><td><a href="README.ja.md">日本語</a></td></tr>
    <tr><td><a href="README.zh-Hans.md">简体中文</a></td><td><a href="README.zh-Hant.md">繁體中文</a></td><td><a href="README.es.md">Español</a></td></tr>
    <tr><td><a href="README.fr.md">Français</a></td><td><a href="README.de.md">Deutsch</a></td><td><a href="README.pt-BR.md">Português</a></td></tr>
    <tr><td><a href="README.ru.md">Русский</a></td><td><a href="README.ar.md">العربية</a></td><td><a href="README.hi.md">हिन्दी</a></td></tr>
    <tr><td><a href="README.it.md">Italiano</a></td><td><a href="README.nl.md">Nederlands</a></td><td><a href="README.tr.md">Türkçe</a></td></tr>
    <tr><td><a href="README.vi.md">Tiếng Việt</a></td><td><b>ไทย</b></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
