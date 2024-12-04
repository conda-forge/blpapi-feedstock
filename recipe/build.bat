set BLPAPI_ROOT=%CD%\blpapi
copy "%BLPAPI_ROOT%"\lib\*.dll "%PREFIX%"\Library\bin
if errorlevel 1 exit 1
"%PYTHON%" -m pip install . --no-deps --no-build-isolation
if errorlevel 1 exit 1
