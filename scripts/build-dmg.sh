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
DMG_TEMP="$BUILD_DIR/dmg_temp"
DMG_PATH="$BUILD_DIR/$DMG_NAME.dmg"
rm -rf "$DMG_TEMP"
mkdir -p "$DMG_TEMP"

# .app을 DMG 임시 폴더에 복사
cp -R "$APP_PATH" "$DMG_TEMP/"

# Applications 심볼릭 링크 추가
ln -s /Applications "$DMG_TEMP/Applications"

# DMG 생성
hdiutil create \
    -volname "$DMG_NAME" \
    -srcfolder "$DMG_TEMP" \
    -ov \
    -format UDZO \
    "$DMG_PATH" \
    2>&1 | tail -3

rm -rf "$DMG_TEMP"

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
