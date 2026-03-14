set BLPAPI_ROOT=%SRC_DIR%\blpapi
"%PYTHON%" -m pip install . --no-deps --no-build-isolation
if errorlevel 1 exit 1
