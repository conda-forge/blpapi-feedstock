set SRC=%SRC_DIR%\blpapi

rem Install headers
xcopy /E /I /Y "%SRC%\include" "%LIBRARY_PREFIX%\include"
if errorlevel 1 exit 1

rem Install DLLs to bin, import libs to lib
copy /Y "%SRC%\lib\*.dll" "%LIBRARY_PREFIX%\bin\"
if errorlevel 1 exit 1
copy /Y "%SRC%\lib\*.lib" "%LIBRARY_PREFIX%\lib\"
if errorlevel 1 exit 1

rem Install cmake config
if exist "%SRC%\cmake" (
    xcopy /E /I /Y "%SRC%\cmake" "%LIBRARY_PREFIX%\lib\cmake\blpapi"
    if errorlevel 1 exit 1
)
