@echo off
set /a prod = 1

: Loop
set /a number = %1
set /a prodnumber = %number% /2
set /a divnumber = %prodnumber% * 2
if %divnumber% == %number% (goto Even) else (goto Odd) 

: Even
set /a prod = %prod% * %1
goto Odd

: Odd
if "%~2" NEQ "" (
shift
goto Loop
)

: Completed
echo %prod%
