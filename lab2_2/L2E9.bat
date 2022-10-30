@echo off
set /a a=%1
set /a b=%2
call :minim %a% %b%
call :maxim %a% %b%
exit /b 0

:minim
if %~1 lss %~2 (
	echo cel mai mic este %~1
) else (
	echo cel mai mic este %~2
)
exit /b

:maxim
if %~1 gtr %~2 (
	echo cel mai mare este %~1
) else (
	echo cel mai mare este %~2
)
exit /b
