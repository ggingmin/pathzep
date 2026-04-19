#!/bin/bash
# PathZep DMG build script
# Usage: ./scripts/build-dmg.sh
#
# Requires: Xcode (xcodebuild)

set -e

# Auto-detect Xcode path if installed
if [ -d "/Applications/Xcode.app" ]; then
    export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
XCODE_PROJECT="$PROJECT_ROOT/PathZep/PathZep.xcodeproj"
BUILD_DIR="$PROJECT_ROOT/build"
APP_NAME="PathZep"
DMG_NAME="PathZep"
SCHEME="PathZep"

# Clean
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"

# Generate DMG background image
echo "🎨 Generating DMG background image..."
python3 "$SCRIPT_DIR/generate_dmg_bg.py"

echo "🔨 Building..."
xcodebuild \
    -project "$XCODE_PROJECT" \
    -scheme "$SCHEME" \
    -configuration Release \
    -derivedDataPath "$BUILD_DIR/derived" \
    -archivePath "$BUILD_DIR/$APP_NAME.xcarchive" \
    archive \
    CODE_SIGN_IDENTITY="-" \
    CODE_SIGNING_ALLOWED=YES \
    2>&1 | tail -5

echo "📦 Extracting app from archive..."
APP_PATH="$BUILD_DIR/$APP_NAME.app"
cp -R "$BUILD_DIR/$APP_NAME.xcarchive/Products/Applications/$APP_NAME.app" "$APP_PATH"

# Verify code signature
echo "🔍 Verifying signature..."
codesign -dvv "$APP_PATH" 2>&1 | head -5 || true

echo "💿 Creating DMG..."
DMG_SIZE=8192  # 8MB (app + background image)
DMG_TEMP="$BUILD_DIR/dmg_temp"
DMG_RW="$BUILD_DIR/${DMG_NAME}_rw.dmg"
DMG_PATH="$BUILD_DIR/$DMG_NAME.dmg"
rm -rf "$DMG_TEMP"
mkdir -p "$DMG_TEMP"

# Copy .app and Applications link
cp -R "$APP_PATH" "$DMG_TEMP/"
ln -s /Applications "$DMG_TEMP/Applications"

# Hide background image inside app bundle so volume root stays clean
mkdir -p "$DMG_TEMP/$APP_NAME.app/Contents/Resources/.bg"
cp "$BUILD_DIR/dmg_background.png" "$DMG_TEMP/$APP_NAME.app/Contents/Resources/.bg/background.png"
cp "$BUILD_DIR/dmg_background@2x.png" "$DMG_TEMP/$APP_NAME.app/Contents/Resources/.bg/background@2x.png"

# Create writable DMG
hdiutil create \
    -volname "$DMG_NAME" \
    -srcfolder "$DMG_TEMP" \
    -ov \
    -format UDRW \
    -size "${DMG_SIZE}k" \
    "$DMG_RW" \
    2>&1 | tail -3

rm -rf "$DMG_TEMP"

# Mount DMG and apply Finder window settings
echo "🎨 Setting DMG layout..."
MOUNT_DIR=$(hdiutil attach -readwrite -noverify -noautoopen "$DMG_RW" | grep "/Volumes/" | sed 's/.*\/Volumes/\/Volumes/')

# Finder window settings (AppleScript)
osascript <<EOF
tell application "Finder"
    tell disk "$DMG_NAME"
        open
        set current view of container window to icon view
        set toolbar visible of container window to false
        set statusbar visible of container window to false
        set the bounds of container window to {200, 100, 860, 540}
        set viewOptions to the icon view options of container window
        set arrangement of viewOptions to not arranged
        set icon size of viewOptions to 80
        set background picture of viewOptions to file "PathZep.app:Contents:Resources:.bg:background.png"
        set position of item "$APP_NAME.app" of container window to {160, 220}
        set position of item "Applications" of container window to {500, 220}
        close
        open
        update without registering applications
        delay 2
        close
    end tell
end tell
EOF

# Clean up unnecessary metadata
rm -rf "$MOUNT_DIR/.fseventsd" "$MOUNT_DIR/.Trashes"

# Unmount
sync
hdiutil detach "$MOUNT_DIR" 2>/dev/null || true

# Convert to read-only DMG
hdiutil convert "$DMG_RW" -format UDZO -o "$DMG_PATH" 2>&1 | tail -3
rm -f "$DMG_RW"

echo ""
echo "============================================"
echo "  ✅ DMG created!"
echo "============================================"
echo ""
echo "  📍 $DMG_PATH"
echo "  📏 $(du -h "$DMG_PATH" | cut -f1)"
echo ""
echo "  Installation:"
echo "  1. Double-click the DMG to open"
echo "  2. Drag PathZep.app to Applications"
echo "  3. Launch PathZep"
echo "  4. Enable Finder Extension in System Settings"
echo ""
