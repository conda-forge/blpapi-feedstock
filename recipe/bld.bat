set BLPAPI_ROOT=%CD%
copy "%BLPAPI_ROOT%"\lib\ "%PREFIX%"\Library\bin
if errorlevel 1 exit 1
"%PYTHON%" setup.py install
if errorlevel 1 exit 1
