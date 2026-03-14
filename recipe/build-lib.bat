set SRC=%SRC_DIR%\blpapi

rem Ensure destination directories exist
if not exist "%LIBRARY_PREFIX%\bin\" mkdir "%LIBRARY_PREFIX%\bin\"
if not exist "%LIBRARY_PREFIX%\lib\" mkdir "%LIBRARY_PREFIX%\lib\"

rem Install DLLs to bin, import libs to lib
copy /Y "%SRC%\lib\*.dll" "%LIBRARY_PREFIX%\bin\"
if errorlevel 1 exit 1
copy /Y "%SRC%\lib\*.lib" "%LIBRARY_PREFIX%\lib\"
if errorlevel 1 exit 1
