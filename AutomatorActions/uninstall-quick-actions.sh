#!/bin/bash
# PathZep - Quick Actions 제거 스크립트

set -e

SERVICES_DIR="$HOME/Library/Services"

echo "🗑  PathZep Quick Actions 제거 중..."

if [ -d "$SERVICES_DIR/절대 경로 복사.workflow" ]; then
    rm -rf "$SERVICES_DIR/절대 경로 복사.workflow"
    echo "  ✅ '절대 경로 복사' 제거 완료"
else
    echo "  ⏭  '절대 경로 복사' 없음 (이미 제거됨)"
fi

if [ -d "$SERVICES_DIR/상대 경로 복사.workflow" ]; then
    rm -rf "$SERVICES_DIR/상대 경로 복사.workflow"
    echo "  ✅ '상대 경로 복사' 제거 완료"
else
    echo "  ⏭  '상대 경로 복사' 없음 (이미 제거됨)"
fi

echo ""
echo "PathZep Quick Actions 제거 완료! 👋"
echo ""
