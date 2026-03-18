#!/bin/bash
set -euo pipefail

export BLPAPI_INCDIR="$PREFIX/include"
export BLPAPI_LIBDIR="$PREFIX/lib"
$PYTHON -m pip install . --no-deps --no-build-isolation
