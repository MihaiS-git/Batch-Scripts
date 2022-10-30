@echo off
set a=%1
if [%a%]==[] (call :caz1) else (call :caz2)
exit /b 0

:caz1
echo string gol: %a%
exit /b 0

:caz2
echo string valid: %a%
exit /b 0
