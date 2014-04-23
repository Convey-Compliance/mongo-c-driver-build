### this file is a sample taken from mongo-c-driver-legacy-build. must be adapted to new driver ####


set workspace=%~dp0
pushd X:\__Dev\__Source\build-toolbox.development\CodeSign
call SignIt_signtool.bat %workspace%..\bin\Win32\Debug\mongoc_d32_v1-0-1.dll
call SignIt_signtool.bat %workspace%..\bin\x64\Debug\mongoc_d64_v1-0-1.dll
call SignIt_signtool.bat %workspace%..\bin\Win32\Release\mongoc_r32_v1-0-1.dll
call SignIt_signtool.bat %workspace%..\bin\x64\Release\mongoc_r64_v1-0-1.dll
popd
