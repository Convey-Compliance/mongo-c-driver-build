### this file is a sample taken from mongo-c-driver-legacy-build. must be adapted to new driver ####


robocopy ..\bin\Win32\Debug\ %1\user\mongoc-dll\ mongo-client*.dll /ZB /X /TEE
robocopy ..\bin\Win32\Release\ %1\user\mongoc-dll\ mongo-client*.dll /ZB /X /TEE
robocopy ..\bin\x64\Debug\ %1\user\mongoc-dll\ mongo-client*.dll /ZB /X /TEE
robocopy ..\bin\x64\Release\ %1\user\mongoc-dll\ mongo-client*.dll /ZB /X /TEE

EXIT /B 0
