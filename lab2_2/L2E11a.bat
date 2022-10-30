@echo off
set /a sum=0

:Loop
if "%1" equ "" (goto :Completed)
for %%f in (%1) do (
	if %1 gtr 0 (set /a sum=%sum%+%1)
)
shift
goto :Loop

:Completed
echo suma=%sum%