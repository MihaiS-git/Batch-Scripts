@echo off
set string=%1
set l=%2
set u=%3
call set substring=%%string:~%l%,%u%%%
echo %substring%

