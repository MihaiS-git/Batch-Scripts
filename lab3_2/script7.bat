@echo off


echo var 1: for cu incrementare automata
for /l %%i in (0,1,10) do (echo %%i)


echo var 2: simulare for clasic
set /a i=0
echo %i%
:Loop2
if %i% leq 10 ( 
	set /a i+=1
	echo %i%
	goto :Loop2
	)


echo var 3: simulare for cu parametrii in linia de comanda
:Loop3
if "%1" equ "" goto :Completed3
for %%f in (%1) do echo %%f
shift
goto :Loop3
:Completed3

