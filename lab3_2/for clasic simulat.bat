@echo off
echo var 2: simulare for clasic
set /a i=0
echo %i%
:Loop2
if %i% leq 10 ( 
	set /a i+=1
	echo %i%
	goto :Loop2
	)
