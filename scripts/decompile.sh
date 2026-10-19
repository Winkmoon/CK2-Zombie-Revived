#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JADX="${JADX:-jadx}"

if ! command -v "$JADX" >/dev/null 2>&1; then
  echo "jadx not found. Download: https://github.com/skylot/jadx/releases" >&2
  exit 1
fi

if [ ! -f "$ROOT/build/classes.dex" ]; then
  echo "build/classes.dex not found. Run scripts/build.sh first." >&2
  exit 1
fi

rm -rf "$ROOT/java-decompiled"
"$JADX" --no-res --no-imports -d "$ROOT/java-decompiled" "$ROOT/build/classes.dex"
echo "done: $ROOT/java-decompiled"
