set BLPAPI_ROOT=%CD%
copy "%BLPAPI_ROOT%"\lib\ "%PREFIX%"\Library\bin
if errorlevel 1 exit 1
"%PYTHON%" -m pip install --no-deps --ignore-installed .
if errorlevel 1 exit 1
