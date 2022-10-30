@echo off
setlocal enabledelayedexpansion
set str=%1
set a=%2
set newstr=!str:%a%=!
echo !newstr!
