@echo off
if "%1" NEQ "" (
	echo se va creea pe c: directorul cu numele %1
	md c:\%1
	c:
	cd c:\%1
) else (
echo lipsa parametru
)