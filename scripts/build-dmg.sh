#!/bin/bash
# PathZep DMG 빌드 스크립트
# 사용법: ./scripts/build-dmg.sh
#
# 필요 사항: Xcode (xcodebuild)

set -e

# Xcode가 설치되어 있으면 xcode-select 경로를 자동 설정
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

# DMG 배경 이미지 생성
echo "🎨 DMG 배경 이미지 생성 중..."
python3 "$SCRIPT_DIR/generate_dmg_bg.py"

echo "🔨 빌드 중..."
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

echo "📦 아카이브에서 앱 추출 중..."
APP_PATH="$BUILD_DIR/$APP_NAME.app"
cp -R "$BUILD_DIR/$APP_NAME.xcarchive/Products/Applications/$APP_NAME.app" "$APP_PATH"

# 앱 서명 확인
echo "🔍 서명 확인..."
codesign -dvv "$APP_PATH" 2>&1 | head -5 || true

echo "💿 DMG 생성 중..."
DMG_SIZE=8192  # 8MB (앱 + 배경 이미지)
DMG_TEMP="$BUILD_DIR/dmg_temp"
DMG_RW="$BUILD_DIR/${DMG_NAME}_rw.dmg"
DMG_PATH="$BUILD_DIR/$DMG_NAME.dmg"
rm -rf "$DMG_TEMP"
mkdir -p "$DMG_TEMP"

# .app과 Applications 링크 복사
cp -R "$APP_PATH" "$DMG_TEMP/"
ln -s /Applications "$DMG_TEMP/Applications"

# 배경 이미지를 앱 번들 안에 숨겨서 볼륨 루트에 별도 파일이 안 보이게 함
mkdir -p "$DMG_TEMP/$APP_NAME.app/Contents/Resources/.bg"
cp "$BUILD_DIR/dmg_background.png" "$DMG_TEMP/$APP_NAME.app/Contents/Resources/.bg/background.png"
cp "$BUILD_DIR/dmg_background@2x.png" "$DMG_TEMP/$APP_NAME.app/Contents/Resources/.bg/background@2x.png"

# 쓰기 가능한 DMG 생성
hdiutil create \
    -volname "$DMG_NAME" \
    -srcfolder "$DMG_TEMP" \
    -ov \
    -format UDRW \
    -size "${DMG_SIZE}k" \
    "$DMG_RW" \
    2>&1 | tail -3

rm -rf "$DMG_TEMP"

# DMG 마운트 후 Finder 윈도우 설정 적용
echo "🎨 DMG 레이아웃 설정 중..."
MOUNT_DIR=$(hdiutil attach -readwrite -noverify -noautoopen "$DMG_RW" | grep "/Volumes/" | sed 's/.*\/Volumes/\/Volumes/')

# Finder 윈도우 설정 (AppleScript)
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

# 불필요한 메타데이터 정리
rm -rf "$MOUNT_DIR/.fseventsd" "$MOUNT_DIR/.Trashes"

# 마운트 해제
sync
hdiutil detach "$MOUNT_DIR" 2>/dev/null || true

# 읽기 전용 DMG로 변환
hdiutil convert "$DMG_RW" -format UDZO -o "$DMG_PATH" 2>&1 | tail -3
rm -f "$DMG_RW"

echo ""
echo "============================================"
echo "  ✅ DMG 생성 완료!"
echo "============================================"
echo ""
echo "  📍 $DMG_PATH"
echo "  📏 $(du -h "$DMG_PATH" | cut -f1)"
echo ""
echo "  설치 방법:"
echo "  1. DMG를 더블클릭해서 열기"
echo "  2. PathZep.app을 Applications 폴더로 드래그"
echo "  3. PathZep 실행"
echo "  4. 시스템 설정에서 Finder Extension 활성화"
echo ""
