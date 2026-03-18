set SRC=%SRC_DIR%\blpapi

rem Install headers
xcopy /E /I /Y "%SRC%\include" "%LIBRARY_PREFIX%\include"
if errorlevel 1 exit 1

rem Install import libraries
if not exist "%LIBRARY_PREFIX%\lib\" mkdir "%LIBRARY_PREFIX%\lib\"
copy /Y "%SRC%\lib\*.lib" "%LIBRARY_PREFIX%\lib\"
if errorlevel 1 exit 1

rem Install cmake config
if exist "%SRC%\cmake" (
    xcopy /E /I /Y "%SRC%\cmake" "%LIBRARY_PREFIX%\lib\cmake\blpapi"
    if errorlevel 1 exit 1
)
