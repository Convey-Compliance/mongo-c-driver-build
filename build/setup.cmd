robocopy \\conveydev.com\files\dev\Repository\third-party-software-installers\mongo\v2.6.3c ..\MongoDB mongod.exe /ZB /X /TEE

robocopy %1\user\openssl\Win32\Debug\lib ..\bin\Win32\Debug /E /X /TEE
robocopy %1\user\openssl\Win32\Release\lib ..\bin\Win32\Release /E /X /TEE
robocopy %1\user\openssl\x64\Debug\lib ..\bin\x64\Debug /E /X /TEE
robocopy %1\user\openssl\x64\Release\lib ..\bin\x64\Release /E /X /TEE

robocopy %1\user\openssl\Win32\Debug\include ..\include\Win32\Debug /E /X /TEE
robocopy %1\user\openssl\Win32\Release\include ..\include\Win32\Release /E /X /TEE
robocopy %1\user\openssl\x64\Debug\include ..\include\x64\Debug /E /X /TEE
robocopy %1\user\openssl\x64\Release\include ..\include\x64\Release /E /X /TEE

EXIT /B 0