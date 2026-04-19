<p align="center">
  <img src="docs/app-icon.png" alt="PathZep" width="128" />
</p>

<h1 align="center">PathZep <code>~/</code></h1>

<p align="center">
  Sao chép đường dẫn tệp và thư mục từ Finder vào clipboard — tức thì.
</p>

Một tiện ích macOS gốc, nhẹ, thêm **menu ngữ cảnh chuột phải** và **phím tắt bàn phím toàn cục** để sao chép đường dẫn tuyệt đối hoặc tương đối so với thư mục home (`~/`).

## Tính năng

- **Đường dẫn tuyệt đối** — Sao chép đường dẫn POSIX đầy đủ (vd: `/Users/me/projects/app/src/index.ts`)
- **Đường dẫn tương đối** — Sao chép đường dẫn tương đối với dấu ngã (vd: `~/projects/app/src/index.ts`)
- **Menu ngữ cảnh Finder** — Nhấp chuột phải vào bất kỳ tệp hoặc thư mục nào trong Finder
- **Phím tắt toàn cục** — Cấu hình phím nóng tùy chỉnh hoạt động từ bất kỳ ứng dụng nào
- **Ứng dụng thanh menu** — Chạy im lặng trên thanh menu, không có biểu tượng trên Dock
- **Chọn nhiều** — Chọn nhiều tệp và sao chép tất cả đường dẫn cùng lúc (phân tách bằng dòng mới)

## Cài đặt

### Tải xuống (khuyến nghị)

1. Tải DMG mới nhất từ [Releases](https://github.com/ggingmin/pathzep/releases/latest)
2. Mở DMG và kéo **PathZep.app** vào **Ứng dụng**
3. Khởi chạy PathZep
4. Bật tiện ích mở rộng Finder:  
   **Cài đặt Hệ thống → Quyền riêng tư & Bảo mật → Tiện ích mở rộng → PathZep**

### Biên dịch từ mã nguồn

Yêu cầu Xcode 15 trở lên.

```bash
git clone https://github.com/ggingmin/pathzep.git
cd pathzep
./scripts/build-dmg.sh
open build/PathZep.dmg
```

## Sử dụng

### Nhấp chuột phải trong Finder

Sau khi bật tiện ích mở rộng, nhấp chuột phải vào bất kỳ tệp hoặc thư mục nào trong Finder để thấy:

- **Copy Absolute Path** — vd: `/Users/me/projects/app/src/index.ts`
- **Copy Relative Path** — vd: `~/projects/app/src/index.ts`

### Phím tắt toàn cục

1. Nhấp vào biểu tượng `~/` trên thanh menu
2. Chọn **Cài đặt phím tắt…**
3. Nhấp vào một trường và nhấn tổ hợp phím mong muốn (vd: `⌃⌥⌘C`)

Phím tắt hoạt động toàn cục — sao chép đường dẫn từ Finder khi đang ở bất kỳ ứng dụng nào.

## Quick Actions (phương án thay thế)

Nếu bạn thích Automator Quick Actions hơn tiện ích mở rộng Finder:

```bash
# Cài đặt
./AutomatorActions/install-quick-actions.sh

# Gỡ cài đặt
./AutomatorActions/uninstall-quick-actions.sh
```

Quick Actions xuất hiện trong **nhấp chuột phải → Tác vụ nhanh** trong Finder.  
Bạn có thể gán phím tắt bàn phím trong **Cài đặt Hệ thống → Bàn phím → Phím tắt bàn phím → Dịch vụ**.

## Yêu cầu hệ thống

- macOS 12 Monterey trở lên
- Hỗ trợ Intel và Apple Silicon

## Giấy phép

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
    <tr><td><b>Tiếng Việt</b></td><td><a href="README.th.md">ไทย</a></td><td><a href="README.id.md">Bahasa Indonesia</a></td></tr>
    <tr><td><a href="README.pl.md">Polski</a></td><td><a href="README.uk.md">Українська</a></td><td><a href="README.sv.md">Svenska</a></td></tr>
    <tr><td><a href="README.da.md">Dansk</a></td><td><a href="README.fi.md">Suomi</a></td><td><a href="README.nb.md">Norsk</a></td></tr>
    <tr><td><a href="README.ms.md">Bahasa Melayu</a></td><td><a href="README.he.md">עברית</a></td><td></td></tr>
</table>

</details>
