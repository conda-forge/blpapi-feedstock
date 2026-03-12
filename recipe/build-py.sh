#!/bin/bash
set -euo pipefail

export BLPAPI_ROOT="$SRC_DIR/blpapi"
$PYTHON -m pip install . --no-deps --no-build-isolation
