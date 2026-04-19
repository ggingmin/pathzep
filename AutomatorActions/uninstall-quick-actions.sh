#!/bin/bash
# PathZep - Quick Actions uninstall script

set -e

SERVICES_DIR="$HOME/Library/Services"

echo "🗑  Uninstalling PathZep Quick Actions..."

if [ -d "$SERVICES_DIR/Copy Absolute Path.workflow" ]; then
    rm -rf "$SERVICES_DIR/Copy Absolute Path.workflow"
    echo "  ✅ 'Copy Absolute Path' removed"
else
    echo "  ⏭  'Copy Absolute Path' not found (already removed)"
fi

if [ -d "$SERVICES_DIR/Copy Relative Path.workflow" ]; then
    rm -rf "$SERVICES_DIR/Copy Relative Path.workflow"
    echo "  ✅ 'Copy Relative Path' removed"
else
    echo "  ⏭  'Copy Relative Path' not found (already removed)"
fi

echo ""
echo "PathZep Quick Actions uninstalled! 👋"
echo ""
