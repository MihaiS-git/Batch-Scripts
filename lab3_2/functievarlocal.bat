@echo off
set str=Outer
echo %str%
CALL :SetValue str
echo %str%
EXIT /B %ERRORLEVEL%

:SetValue
SETLOCAL
set str=Inner
set "%~1=%str%"
ENDLOCAL
EXIT /B 0