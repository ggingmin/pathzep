#!/usr/bin/env python3
"""PathZep app icon generator — ~/ text only"""

from PIL import Image, ImageDraw, ImageFont
import os

SIZE = 1024
OUT_DIR = os.path.join(os.path.dirname(__file__), "..", "PathZep", "PathZep", "Assets.xcassets", "AppIcon.appiconset")

img = Image.new("RGBA", (SIZE, SIZE), (0, 0, 0, 0))
draw = ImageDraw.Draw(img)

# ~/ text only — no background
font = None
font_size = int(SIZE * 0.7)
for font_path in [
    "/System/Library/Fonts/SFMono-Bold.otf",
    "/System/Library/Fonts/Supplemental/SF-Mono-Bold.otf",
    "/System/Library/Fonts/Menlo.ttc",
    "/System/Library/Fonts/Courier.dfont",
]:
    if os.path.exists(font_path):
        try:
            font = ImageFont.truetype(font_path, font_size)
            break
        except:
            continue

if font is None:
    font = ImageFont.load_default()

text = "~/"
text_color = (30, 36, 60)  # Deep navy

bbox = draw.textbbox((0, 0), text, font=font)
tw = bbox[2] - bbox[0]
th = bbox[3] - bbox[1]
tx = (SIZE - tw) // 2 - bbox[0]
ty = (SIZE - th) // 2 - bbox[1]

draw.text((tx, ty), text, fill=text_color, font=font)

os.makedirs(OUT_DIR, exist_ok=True)

sizes = [1024, 512, 256, 128, 64, 32, 16]
for s in sizes:
    resized = img.resize((s, s), Image.LANCZOS)
    resized.save(os.path.join(OUT_DIR, f"icon_{s}x{s}.png"))
    print(f"  ✓ {s}x{s}")

print(f"\n✅ Icon generation complete: {OUT_DIR}")
