@echo off
set /a produs=1

:Loop
setlocal enabledelayedexpansion
if "%1" == "" (
	goto :Completed
	) else (
	for %%F in (%1) do (
		set /a nr=%%F
		set /a divn=!nr!/2
		set /a prodn=!divn!*2
		if !nr! equ !prodn! (goto :Par) else (goto :Impar)
	)
)
endlocal
	
:Par
set /a produs=%produs%*%nr%
shift
goto :Loop

:Impar
shift
goto :Loop

:Completed
echo produs=%produs%
goto :eof