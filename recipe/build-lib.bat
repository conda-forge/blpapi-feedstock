set SRC=%SRC_DIR%\blpapi

rem Ensure destination directory exists
if not exist "%LIBRARY_PREFIX%\bin\" mkdir "%LIBRARY_PREFIX%\bin\"

rem Install DLLs to bin
copy /Y "%SRC%\lib\*.dll" "%LIBRARY_PREFIX%\bin\"
if errorlevel 1 exit 1
