set workspace=%~dp0
pushd X:\__Dev\__Source\build-toolbox.development\CodeSign
call SignIt_signtool.bat %workspace%..\bin\Win32\Debug\mongo-client_d32_v0.94.3.dll
call SignIt_signtool.bat %workspace%..\bin\x64\Debug\mongo-client_d64_v0.94.3.dll
call SignIt_signtool.bat %workspace%..\bin\Win32\Release\mongo-client_r32_v0.94.3.dll
call SignIt_signtool.bat %workspace%..\bin\x64\Release\mongo-client_r64_v0.94.3.dll
popd
