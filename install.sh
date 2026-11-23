#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.termux"
TARGET_FILE="$TARGET_DIR/termux.properties"
MODE="${1:-10col}"

mkdir -p "$TARGET_DIR"

case "$MODE" in
  10col|dvorak|dvorak-10col)
    cp -f "$REPO_DIR/termux.properties.dvorak-10col" "$TARGET_FILE"
    echo "Installed 10-column aligned Dvorak extra-keys -> $TARGET_FILE"
    ;;
  full|13col|dvorak-full)
    cp -f "$REPO_DIR/termux.properties.dvorak-full" "$TARGET_FILE"
    echo "Installed full 13-column Dvorak extra-keys -> $TARGET_FILE"
    ;;
  restore|default|2row|off)
    cp -f "$REPO_DIR/termux.properties.default-2row" "$TARGET_FILE"
    echo "Restored standard 2-row coding extra-keys -> $TARGET_FILE"
    ;;
  *)
    echo "Usage: $0 [10col|full|restore]"
    exit 1
    ;;
esac

if command -v termux-reload-settings >/dev/null 2>&1; then
  termux-reload-settings
  echo "Reloaded Termux settings."
fi
