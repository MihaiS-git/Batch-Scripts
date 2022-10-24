@echo off
set /a salary = 1000
set /a _commission = 500
if defined _commission set /a salary = %salary% + %_commission%
echo %salary%
