@echo off
setlocal enabledelayedexpansion
set str=%1
set /a len=%2
set substr=!str:~%len%!
echo %substr%
endlocal