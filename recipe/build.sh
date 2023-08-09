#!/bin/bash

export BLPAPI_ROOT="."

if [ -d "$BLPAPI_ROOT/Linux" ]; then
   $PYTHON -m pip install --no-deps --ignore-installed .
   cp -v $BLPAPI_ROOT/Linux/lib*.so $PREFIX/lib/
else
   $PYTHON -m pip install --no-deps --ignore-installed --index-url=https://bcms.bloomberg.com/pip/simple $PKG_NAME==$PKG_VERSION
fi
