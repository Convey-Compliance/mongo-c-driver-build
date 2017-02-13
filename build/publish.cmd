ECHO ### this file is a sample taken from mongo-c-driver-legacy-build. must be adapted to new driver ####

robocopy ..\bin\Win32\Debug\ %1\ci-support\mongoc-dll\ mongo-client*.dll /ZB /X /TEE
IF ERRORLEVEL 4 exit /B 1

robocopy ..\bin\Win32\Release\ %1\ci-support\mongoc-dll\ mongo-client*.dll /ZB /X /TEE
IF ERRORLEVEL 4 exit /B 1

robocopy ..\bin\x64\Debug\ %1\ci-support\mongoc-dll\ mongo-client*.dll /ZB /X /TEE
IF ERRORLEVEL 4 exit /B 1

robocopy ..\bin\x64\Release\ %1\ci-support\mongoc-dll\ mongo-client*.dll /ZB /X /TEE
IF ERRORLEVEL 4 exit /B 1

EXIT /B 0
