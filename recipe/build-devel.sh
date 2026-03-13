#!/bin/bash
set -euo pipefail

SRC="$SRC_DIR/blpapi"

# Install headers
mkdir -p "$PREFIX/include"
cp -rv "$SRC/include/"* "$PREFIX/include/"

# Install cmake config
if [ -d "$SRC/cmake" ]; then
    mkdir -p "$PREFIX/lib/cmake/blpapi"
    cp -rv "$SRC/cmake/"* "$PREFIX/lib/cmake/blpapi/"
fi
