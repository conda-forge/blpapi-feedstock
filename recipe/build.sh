#!/bin/bash

export BLPAPI_ROOT="."
$PYTHON -m pip install --no-deps --ignore-installed .

if [ -d "$BLPAPI_ROOT/Linux" ]; then
   cp -v $BLPAPI_ROOT/Linux/lib*.so $PREFIX/lib/
else
   cp -v $BLPAPI_ROOT/Darwin/lib*.so $PREFIX/lib/
fi
