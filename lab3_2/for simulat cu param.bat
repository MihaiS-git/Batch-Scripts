@echo off
echo var 3: simulare for cu parametrii in linia de comanda
:Loop3
if "%1" equ "" goto :Completed3
for %%f in (%1) do echo %%f
shift
goto :Loop3
:Completed3
