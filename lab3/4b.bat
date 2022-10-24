@echo off
SET Src=C:\windows\*
FOR /F "TOKENS=*" %%A IN ('DIR /B/S "%Src%"') DO IF [%%~nxA]==[%%~nA] ECHO %%~A
PAUSE
EXIT
