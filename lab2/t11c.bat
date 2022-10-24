@echo off
set /a sum = 0
set /a position = 1

: Loop
set /a number = %1
set /a divnumber = %position% / 2
set /a prodnumber = %divnumber% * 2
if %prodnumber% NEQ %position% (if %number% lss 0 (goto :Negative) else goto :Positive) else (goto :Positive)

: Negative
set /a sum = %sum% + %number%

: Positive
set /a position = %position% + 1
if "%~2" NEQ "" (
shift
goto :Loop
) else (
goto :Completed
)

: Completed
echo %sum%