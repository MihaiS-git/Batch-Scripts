@echo off
setlocal enabledelayedexpansion
set str=%1
set m=%2
set newstr=!str:~%m%,-%m%!
echo !newstr!
