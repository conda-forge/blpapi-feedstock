#!/bin/bash

export BLPAPI_ROOT="."

if [ -d "$BLPAPI_ROOT/Darwin" ]; then
   echo "Copying dynamic library from python wheel"
   ls ./blpapi
   cp -v ./blpapi/.dylibs/lib*.so $BLPAPI_ROOT/Darwin/
fi

$PYTHON -m pip install --no-deps --ignore-installed .

if [ -d "$BLPAPI_ROOT/Linux" ]; then
   cp -v $BLPAPI_ROOT/Linux/lib*.so $PREFIX/lib/
else
   cp -v $BLPAPI_ROOT/Darwin/lib*.so $PREFIX/lib/
fi
