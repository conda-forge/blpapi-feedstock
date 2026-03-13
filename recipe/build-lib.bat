set SRC=%SRC_DIR%\blpapi

rem Install DLLs to bin, import libs to lib
copy /Y "%SRC%\lib\*.dll" "%LIBRARY_PREFIX%\bin\"
if errorlevel 1 exit 1
copy /Y "%SRC%\lib\*.lib" "%LIBRARY_PREFIX%\lib\"
if errorlevel 1 exit 1
