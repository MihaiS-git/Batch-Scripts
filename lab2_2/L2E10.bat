@echo off
set /a x=%1
set /a a=%2
set /a b=%3
set /a m=%a%*%x%*%x%+%b%
set /a n=5*%x%-7
if %x% lss 0 echo %m%
if %x% equ 0 echo 2
if %x% gtr 0 echo %n%
