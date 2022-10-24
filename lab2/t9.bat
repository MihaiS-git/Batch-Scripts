@echo off
set /a a=%1
set /a b=%2

if %a% gtr %b% (
echo a mai mare decat b
) else (
echo b mai mare decat a
)