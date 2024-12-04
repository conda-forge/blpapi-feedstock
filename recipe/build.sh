#!/bin/bash

export BLPAPI_ROOT="$(pwd)/blpapi"
$PYTHON -m pip install . --no-deps --no-build-isolation

if [ -d "$BLPAPI_ROOT/Linux" ]; then
   cp -v $BLPAPI_ROOT/Linux/lib*.so $PREFIX/lib/
else
   cp -v $BLPAPI_ROOT/Darwin/lib*.so $PREFIX/lib/
fi
