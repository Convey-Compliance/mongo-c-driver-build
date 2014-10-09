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

powershell -Command "& {(Get-Content ..\mongoc_static.vcxproj) -replace '%1.%2.%3', '%4.%5.%6' | Set-Content ..\mongoc_static.vcxproj}"
powershell -Command "& {(Get-Content ..\mongoc_shared.vcxproj) -replace '%1.%2.%3', '%4.%5.%6' | Set-Content ..\mongoc_shared.vcxproj}"
powershell -Command "& {(Get-Content sign.cmd) -replace '%1.%2.%3', '%4.%5.%6' | Set-Content sign.cmd}"

goto :end

:help

echo --
echo syntax: bump_version CurrentMajor CurrentMinor CurrentRelease NewMajor NewMinor NewRelease
echo --

:end