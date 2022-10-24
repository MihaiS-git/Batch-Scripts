::echo off
IF "%1" NEQ "" (
	IF "%2" NEQ "" (
		ECHO Se va creea directorul %1 cu subdirectorul %2
		md c:\%1
		md c:\%1\%2
	) 
) ELSE (
	echo Lipsa parametrii
	)
