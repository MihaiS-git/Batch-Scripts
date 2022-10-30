@echo off
set /a produs=1

:Loop
set /a nr=%1
set /a divn=%nr%/2
set /a prodn=%divn%*2
if %nr% equ %prodn% (goto :Par) else (goto :Impar)

	
:Par
set /a produs=%produs%*%nr%
shift
if "%1" == "" (goto :Completed) else (goto :Loop)

:Impar
shift
if "%1" == "" (goto :Completed) else (goto :Loop)

:Completed
echo produs=%produs%
goto :eof