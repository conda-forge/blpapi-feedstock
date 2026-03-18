set BLPAPI_INCDIR=%LIBRARY_PREFIX%\include
set BLPAPI_LIBDIR=%LIBRARY_PREFIX%\lib
"%PYTHON%" -m pip install . --no-deps --no-build-isolation
if errorlevel 1 exit 1
