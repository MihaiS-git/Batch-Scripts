@ echo off
set /a sum=0

: loop
if "%1"=="" goto completed
for %%i in (%1) do (
			if %1 gtr 0 (
			set /a sum = %sum% + %1
			)
)
shift
goto loop

: completed
echo %sum%
