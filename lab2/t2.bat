@echo off
set /p string=%1
set /p start=%2
set /a len=%3
call set substring=%%string:~0,%len%%%
echo %substring%