@echo off
setlocal
set /a ctr = 0

:Loop
set /a number = %1
if %number% lss 6 (set /a ctr = %ctr% + 1)
if "%~2" NEQ "" (
	shift
	goto :Loop
	) else (
	goto :Completed
	)

:Completed
echo Numarul de elemente mai mici decat 6 este: %ctr%
