#!/usr/bin/env python3
"""PathZep DMG background — generate SVG then render to PNG via macOS native Swift"""
import os, subprocess, tempfile

W, H = 660, 440

svg = f'''<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" width="{W}" height="{H}" viewBox="0 0 {W} {H}">
  <defs>
    <linearGradient id="arrowGrad" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:#8B6FE0;stop-opacity:0.25"/>
      <stop offset="100%" style="stop-color:#7C5CD8;stop-opacity:0.85"/>
    </linearGradient>
    <marker id="arrowHead" markerWidth="14" markerHeight="12" refX="13" refY="6"
            orient="auto" markerUnits="userSpaceOnUse">
      <path d="M 0 0.5 L 13 6 L 0 11.5 Q 3 6 0 0.5 Z" fill="#7C5CD8" opacity="0.85"/>
    </marker>
  </defs>

  <!-- White background -->
  <rect width="{W}" height="{H}" fill="#FFFFFF"/>

  <!-- ~/ logo -->
  <text x="{W//2}" y="78" text-anchor="middle"
        font-family="Menlo, SF Mono, monospace" font-weight="900" font-size="54"
        fill="#5838C8">~/</text>

  <!-- PathZep -->
  <text x="{W//2}" y="110" text-anchor="middle"
        font-family="Menlo, monospace" font-weight="bold" font-size="15"
        fill="#8C8C9B">PathZep</text>

  <!-- Divider -->
  <line x1="{W//2 - 55}" y1="130" x2="{W//2 + 55}" y2="130"
        stroke="#E0E0E8" stroke-width="1"/>

  <!-- Curved arrow: app icon(160,220) → Applications(500,220), icon 80px -->
  <path d="M 205 260 C 270 210, 390 210, 455 260"
        fill="none" stroke="url(#arrowGrad)" stroke-width="2.5"
        stroke-linecap="round" marker-end="url(#arrowHead)"/>

  <!-- Drag to install — above the arch line -->
  <text x="{W//2}" y="200" text-anchor="middle"
        font-family="Helvetica Neue, -apple-system, sans-serif" font-weight="400" font-size="12"
        fill="#AAAAB8">Drag to install</text>
</svg>'''

out_dir = os.path.join(os.path.dirname(__file__), "..", "build")
os.makedirs(out_dir, exist_ok=True)

# Save SVG to temp file
svg_path = os.path.join(out_dir, "dmg_background.svg")
with open(svg_path, "w") as f:
    f.write(svg)

# Render SVG to PNG via Swift script (macOS native WebKit/CoreGraphics)
swift_code = r'''
import Foundation
import AppKit

let args = CommandLine.arguments
guard args.count >= 5 else {
    print("Usage: render <svg_path> <png_1x> <png_2x> <scale>")
    exit(1)
}

let svgPath = args[1]
let png1x = args[2]
let png2x = args[3]

guard let svgData = FileManager.default.contents(atPath: svgPath) else {
    print("Cannot read SVG"); exit(1)
}

// NSImage can render SVG natively on macOS 12+
guard let svgImage = NSImage(data: svgData) else {
    print("Cannot parse SVG"); exit(1)
}

func renderPNG(image: NSImage, width: Int, height: Int, path: String) {
    let rep = NSBitmapImageRep(
        bitmapDataPlanes: nil,
        pixelsWide: width, pixelsHigh: height,
        bitsPerSample: 8, samplesPerPixel: 4,
        hasAlpha: true, isPlanar: false,
        colorSpaceName: .deviceRGB,
        bytesPerRow: 0, bitsPerPixel: 0
    )!
    rep.size = NSSize(width: width, height: height)

    NSGraphicsContext.saveGraphicsState()
    NSGraphicsContext.current = NSGraphicsContext(bitmapImageRep: rep)
    image.draw(in: NSRect(x: 0, y: 0, width: width, height: height))
    NSGraphicsContext.restoreGraphicsState()

    let pngData = rep.representation(using: .png, properties: [:])!
    try! pngData.write(to: URL(fileURLWithPath: path))
}

renderPNG(image: svgImage, width: 660, height: 440, path: png1x)
renderPNG(image: svgImage, width: 1320, height: 880, path: png2x)
print("OK")
'''

swift_path = os.path.join(out_dir, "_render.swift")
with open(swift_path, "w") as f:
    f.write(swift_code)

png_1x = os.path.join(out_dir, "dmg_background.png")
png_2x = os.path.join(out_dir, "dmg_background@2x.png")

result = subprocess.run(
    ["swift", swift_path, svg_path, png_1x, png_2x, "2"],
    capture_output=True, text=True, timeout=30
)

if result.returncode != 0:
    print(f"Swift render failed: {result.stderr}")
    exit(1)

# Clean up temp files
os.remove(swift_path)

print(f"✅ DMG background created: {png_1x}")
