#!/usr/bin/env python3
"""Generate PathZep app icon at 1024x1024 using Pillow."""

from PIL import Image, ImageDraw, ImageFont
import math
import os

SIZE = 1024
img = Image.new("RGBA", (SIZE, SIZE), (0, 0, 0, 0))
draw = ImageDraw.Draw(img)

# === Background: rounded square with gradient-like effect ===
# macOS icon shape: rounded rect with ~22% corner radius
corner_r = int(SIZE * 0.22)
margin = 2

# Base fill — deep blue-purple gradient approximation
# Draw concentric rounded rects from dark to lighter
for i in range(SIZE // 2):
    t = i / (SIZE / 2)
    r = int(30 + t * 40)
    g = int(60 + t * 80)
    b = int(140 + t * 80)
    inset = margin + i
    if inset >= SIZE // 2:
        break
    cr = max(corner_r - i, 0)
    draw.rounded_rectangle(
        [inset, inset, SIZE - 1 - inset, SIZE - 1 - inset],
        radius=cr,
        fill=(r, g, b, 255),
    )

# === Draw a stylized "/" path symbol ===
# The slash represents "path"
cx, cy = SIZE // 2, SIZE // 2

# Slash stroke
slash_width = int(SIZE * 0.09)
slash_height = int(SIZE * 0.48)
slash_offset_x = int(SIZE * 0.12)

# Points for "/" shape (parallelogram)
x1 = cx + slash_offset_x  # bottom right
y1 = cy + slash_height // 2
x2 = cx - slash_offset_x  # top left
y2 = cy - slash_height // 2

# Draw thick anti-aliased slash using polygon
half_w = slash_width // 2
slash_points = [
    (x1 - half_w, y1),
    (x1 + half_w, y1),
    (x2 + half_w, y2),
    (x2 - half_w, y2),
]
draw.polygon(slash_points, fill=(255, 255, 255, 240))

# === Draw "~" tilde above the slash ===
# Represents the relative path ~/
tilde_y = cy - slash_height // 2 - int(SIZE * 0.06)
tilde_cx = cx
tilde_w = int(SIZE * 0.28)
tilde_h = int(SIZE * 0.06)
tilde_thick = int(SIZE * 0.035)

# Draw tilde as a sine wave
points_top = []
points_bot = []
steps = 60
for i in range(steps + 1):
    t = i / steps
    x = tilde_cx - tilde_w // 2 + int(t * tilde_w)
    y_offset = math.sin(t * math.pi * 2) * tilde_h
    points_top.append((x, int(tilde_y + y_offset - tilde_thick // 2)))
    points_bot.append((x, int(tilde_y + y_offset + tilde_thick // 2)))

# Combine into a closed polygon (top edge + reversed bottom edge)
tilde_poly = points_top + list(reversed(points_bot))
draw.polygon(tilde_poly, fill=(120, 220, 255, 230))

# === Draw small dots for "..." path separator ===
dot_r = int(SIZE * 0.022)
dot_y = cy + slash_height // 2 + int(SIZE * 0.08)
dot_spacing = int(SIZE * 0.07)
for i in range(-1, 2):
    dx = cx + i * dot_spacing
    draw.ellipse(
        [dx - dot_r, dot_y - dot_r, dx + dot_r, dot_y + dot_r],
        fill=(180, 210, 255, 200),
    )

# === Save ===
out_dir = os.path.join(os.path.dirname(__file__), "..", "PathZep", "PathZep", "Assets.xcassets", "AppIcon.appiconset")
os.makedirs(out_dir, exist_ok=True)

master_path = os.path.join(out_dir, "icon_1024x1024.png")
img.save(master_path, "PNG")
print(f"Saved master icon: {master_path}")

# Generate all required sizes
sizes = [16, 32, 64, 128, 256, 512, 1024]
for s in sizes:
    resized = img.resize((s, s), Image.LANCZOS)
    filename = f"icon_{s}x{s}.png"
    resized.save(os.path.join(out_dir, filename), "PNG")
    print(f"  Generated {filename}")

print("\nDone! All icon sizes generated.")
