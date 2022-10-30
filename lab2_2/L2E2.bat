@echo off
setlocal enabledelayedexpansion
set str=%1
set startchar=%2
set len=%3
set newstr=!str:~%startchar%,%len%!
echo !newstr!
