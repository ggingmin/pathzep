[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [简体中文](README.zh-Hans.md) | [繁體中文](README.zh-Hant.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Português](README.pt-BR.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [हिन्दी](README.hi.md) | [Italiano](README.it.md) | [Nederlands](README.nl.md) | [Türkçe](README.tr.md) | **Tiếng Việt** | [ไทย](README.th.md) | [Bahasa Indonesia](README.id.md) | [Polski](README.pl.md) | [Українська](README.uk.md) | [Svenska](README.sv.md) | [Dansk](README.da.md) | [Suomi](README.fi.md) | [Norsk](README.nb.md) | [Bahasa Melayu](README.ms.md) | [עברית](README.he.md)

# PathZep `~/`

Sao chép đường dẫn tệp và thư mục từ Finder vào clipboard — tức thì.

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
