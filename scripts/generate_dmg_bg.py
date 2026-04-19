#!/usr/bin/env python3
"""PathZep DMG 배경 이미지 생성 — 심플 스타일"""

from PIL import Image, ImageDraw, ImageFont
import os

W, H = 660, 400
img = Image.new("RGBA", (W, H), (0, 0, 0, 0))
draw = ImageDraw.Draw(img)

# 배경: 깔끔한 다크
bg = (28, 30, 38)
draw.rectangle([(0, 0), (W, H)], fill=bg)

# 폰트
def load_mono(size):
    for p in ["/System/Library/Fonts/SFMono-Bold.otf",
              "/System/Library/Fonts/Supplemental/SF-Mono-Bold.otf",
              "/System/Library/Fonts/Menlo.ttc"]:
        if os.path.exists(p):
            try: return ImageFont.truetype(p, size)
            except: continue
    return ImageFont.load_default()

def load_regular(size):
    for p in ["/System/Library/Fonts/SFMono-Regular.otf",
              "/System/Library/Fonts/Supplemental/SF-Mono-Regular.otf",
              "/System/Library/Fonts/Menlo.ttc"]:
        if os.path.exists(p):
            try: return ImageFont.truetype(p, size)
            except: continue
    return ImageFont.load_default()

# 중앙 상단: 앱 이름 (bold + 크게)
name_font = load_mono(48)
name_bbox = draw.textbbox((0, 0), "~/", font=name_font)
name_w = name_bbox[2] - name_bbox[0]
tilde_color = (160, 130, 240)
draw.text(((W - name_w) // 2, 55), "~/", fill=tilde_color, font=name_font)

sub_font = load_mono(16)
sub_text = "PathZep"
sub_bbox = draw.textbbox((0, 0), sub_text, font=sub_font)
sub_w = sub_bbox[2] - sub_bbox[0]
draw.text(((W - sub_w) // 2, 115), sub_text, fill=(130, 135, 160), font=sub_font)

# 구분선
line_y = 155
line_color = (50, 55, 70)
draw.line([(W // 2 - 80, line_y), (W // 2 + 80, line_y)], fill=line_color, width=1)

# 하단: 드래그 안내 영역
guide_y = 210

# 왼쪽: 앱 아이콘 자리 (그라데이션 사각 + ~/ 텍스트)
icon_size = 72
icon_x = W // 2 - 130 - icon_size // 2
icon_y = guide_y

# 아이콘 배경
icon_bg = (60, 70, 130)
draw.rounded_rectangle(
    [(icon_x, icon_y), (icon_x + icon_size, icon_y + icon_size)],
    radius=14, fill=icon_bg
)
icon_font = load_mono(32)
icon_bbox = draw.textbbox((0, 0), "~/", font=icon_font)
iw = icon_bbox[2] - icon_bbox[0]
ih = icon_bbox[3] - icon_bbox[1]
draw.text((icon_x + (icon_size - iw) // 2, icon_y + (icon_size - ih) // 2 - 2),
          "~/", fill=(220, 220, 240), font=icon_font)

# 앱 이름 라벨
label_font = load_regular(11)
label_text = "PathZep.app"
label_bbox = draw.textbbox((0, 0), label_text, font=label_font)
lw = label_bbox[2] - label_bbox[0]
draw.text((icon_x + (icon_size - lw) // 2, icon_y + icon_size + 8),
          label_text, fill=(110, 115, 140), font=label_font)

# 화살표
arrow_y = icon_y + icon_size // 2
ax_start = icon_x + icon_size + 24
ax_end = W // 2 + 130 - icon_size // 2 - 24
arrow_color = (90, 100, 150)
for x in range(ax_start, ax_end, 12):
    draw.rounded_rectangle([(x, arrow_y - 1), (x + 6, arrow_y + 2)], radius=1, fill=arrow_color)
# 화살표 머리
draw.polygon([
    (ax_end + 2, arrow_y - 5),
    (ax_end + 10, arrow_y),
    (ax_end + 2, arrow_y + 6)
], fill=arrow_color)

# 오른쪽: Applications 폴더
folder_x = W // 2 + 130 - icon_size // 2
folder_y = guide_y
folder_color = (70, 130, 230)
draw.rounded_rectangle(
    [(folder_x, folder_y + 10), (folder_x + icon_size, folder_y + icon_size)],
    radius=8, fill=folder_color
)
draw.rounded_rectangle(
    [(folder_x, folder_y + 4), (folder_x + 30, folder_y + 16)],
    radius=5, fill=folder_color
)

folder_label = "Applications"
fl_bbox = draw.textbbox((0, 0), folder_label, font=label_font)
fl_w = fl_bbox[2] - fl_bbox[0]
draw.text((folder_x + (icon_size - fl_w) // 2, folder_y + icon_size + 8),
          folder_label, fill=(110, 115, 140), font=label_font)

# 하단 슬로건
slogan_font = load_regular(12)
slogan = "Drag to install"
sl_bbox = draw.textbbox((0, 0), slogan, font=slogan_font)
sl_w = sl_bbox[2] - sl_bbox[0]
draw.text(((W - sl_w) // 2, H - 45), slogan, fill=(80, 85, 110), font=slogan_font)

# 저장
out_dir = os.path.join(os.path.dirname(__file__), "..", "build")
os.makedirs(out_dir, exist_ok=True)
out_path = os.path.join(out_dir, "dmg_background.png")
img.save(out_path)

img_2x = img.resize((W * 2, H * 2), Image.LANCZOS)
img_2x.save(os.path.join(out_dir, "dmg_background@2x.png"))

print(f"✅ DMG 배경 생성: {out_path}")
