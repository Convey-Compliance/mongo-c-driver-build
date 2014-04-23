### this file is a sample taken from mongo-c-driver-legacy-build. must be adapted to new driver ####


@echo off
if %%1 == "" (
  goto :help
)
if %%2 == "" (
  goto :help
)
if %%3 == "" (
  goto :help
)
if %%4 == "" (
  goto :help
)
if %%5 == "" (
  goto :help
)
if %%6 == "" (
  goto :help
)

powershell -Command "& {(Get-Content ..\__submodules\mongo-c-driver\src\mongoc.vcxproj) -replace '%1-%2-%3', '%4-%5-%6' | Set-Content ..\__submodules\mongo-c-driver\src\mongoc.vcxproj}"
powershell -Command "& {(Get-Content ..\__submodules\mongo-c-driver\src\mongoc.rc) -replace '%1,%2,%3,', '%4,%5,%6,' | Set-Content ..\__submodules\mongo-c-driver\src\mongoc.rc}"
powershell -Command "& {(Get-Content ..\__submodules\mongo-c-driver\src\mongoc.rc) -replace '%1.%2.%3.', '%4.%5.%6.' | Set-Content ..\__submodules\mongo-c-driver\src\mongoc.rc}"
powershell -Command "& {(Get-Content sign.cmd) -replace '%1.%2.%3.', '%4.%5.%6.' | Set-Content sign.cmd}"

goto :end

:help

echo --
echo syntax: bump_version CurrentMajor CurrentMinor CurrentRelease NewMajor NewMinor NewRelease
echo --

:end