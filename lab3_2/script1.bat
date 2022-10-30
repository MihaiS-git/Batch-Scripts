@echo off
setlocal enabledelayedexpansion
set /a ctr = 1
for /f "delims=" %%a in (c:\filme\infos.txt) do (
	set /a rest = !ctr! %% 2
	echo !rest!
	if !rest! NEQ 0 (echo %%a)
	set /a ctr++
	pause
)
