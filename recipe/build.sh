#!/bin/bash

export BLPAPI_ROOT="."

if [ -d "$BLPAPI_ROOT/Linux" ]; then
   $PYTHON -m pip install --no-deps --ignore-installed .
   cp -v $BLPAPI_ROOT/Linux/lib*.so $PREFIX/lib/
else
   PY_VER_NO_DOT=$(echo $PY_VER | tr -d .)
   $PYTHON -m pip install -vvv --no-deps --ignore-installed https://bcms.bloomberg.com/pip/simple/$PKG_NAME/$PKG_NAME-$PKG_VERSION-cp$PY_VER_NO_DOT-cp$PY_VER_NO_DOT-macosx_10_9_x86_64.whl
fi
