#!/bin/bash
set -euo pipefail

SRC="$SRC_DIR/blpapi"

# Detect platform subdirectory
if [ -d "$SRC/Linux" ]; then
    PLATDIR="$SRC/Linux"
elif [ -d "$SRC/Darwin" ]; then
    PLATDIR="$SRC/Darwin"
else
    echo "ERROR: No recognized platform directory found in $SRC" >&2
    exit 1
fi

# Install shared libraries
mkdir -p "$PREFIX/lib"
cp -v "$PLATDIR/"lib*.so "$PREFIX/lib/" 2>/dev/null || \
cp -v "$PLATDIR/"lib*.dylib "$PREFIX/lib/" 2>/dev/null || true
