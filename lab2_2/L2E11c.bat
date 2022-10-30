@echo off
set /a sum=0

:Loop
set /a nr=%1
if %nr% lss 0 (goto :Negativ) else (goto :Pozitiv)

:Negativ
set /a sum=%sum%+%nr%
shift
shift
if "%1" neq "" (goto :Loop) else (goto :Completed)

:Pozitiv
shift
shift
if "%1" neq "" (goto :Loop) else (goto :Completed)

:Completed
echo suma=%sum%
goto :eof