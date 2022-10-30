@echo off
setlocal enabledelayedexpansion
set str=%1
set a=%2
set s=%3
set newstr=!str:%a%=%s%!
echo !newstr!
