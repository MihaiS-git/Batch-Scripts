@echo off
set /a sum = 0
set /a counter = 0

: Loop
set /a number = %1 
set /a divnum = %number% / 5
set /a prodnum = %divnum% * 5
set /a r = %number% - %prodnum%
if  %r% EQU 2 (
	set /a sum = %sum% + %number%
	set /a counter += 1
	)		
if "%~2" NEQ "" (
shift
goto :Loop
) else (
goto :Completed
)
	
: Completed
set /a average = %sum% / %counter%
echo %average%
