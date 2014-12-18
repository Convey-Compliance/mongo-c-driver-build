cd ..\mongodb
rd mongodata 2>nul
md mongodata
start mongod.exe --dbpath mongodata
ping 1.1.1.111 -n 1 -w 2000 > nul

:: we run only debug tests cause release not working properly(appcrash)
:: because assert(expr) just removes expr and behavior changes
cd ..\bin\Win32\Debug
test-libmongoc.exe -p
if ERRORLEVEL 1 (
  set ret=%errorlevel%
  goto :ret
)

cd ..\..\x64\Debug
test-libmongoc.exe -p
if ERRORLEVEL 1 (
  set ret=%errorlevel%
  goto :ret
)

:ret

cd ..\..\..\build
taskkill /F /T /IM mongod.exe 2>nul
:: notice here we are always returning 0 to prevent the build to be broken and stop our test failures collector in Jenkins
exit /b 0