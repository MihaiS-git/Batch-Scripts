@echo off
setlocal enabledelayedexpansion
set /p user=introdu user-ul: 
echo Hello, %user%!
set a[0]=echilibru
set b[0]=9
set a[1]=mar
set b[1]=3
set a[2]=info
set b[2]=4
set /a incercari=5
echo cuvinte disponibile:
echo 0: *********, 1: ***, 2: ****
set /p caz=alege un cuvant(0-2)
set cuvant=!a[%caz%]!
set /a NR=!b[%caz%]!
echo numarul de litere: %NR%
if %caz% == 0 (goto :caz0)
if %caz% == 1 (goto :caz1)
if %caz% == 2 (goto :caz2)
goto :eof

:caz0
set local
set /a flag=0
set a[8]=%cuvant:~8%
set a[7]=%cuvant:~7,1%
set a[6]=%cuvant:~6,1%
set a[5]=%cuvant:~5,1%
set a[4]=%cuvant:~4,1%
set a[3]=%cuvant:~3,1%
set a[2]=%cuvant:~2,1%
set a[1]=%cuvant:~1,1%
set a[0]=%cuvant:~0,1%

set /p litera="introdu o litera continuta de cuvantul ales: "
for /l %%G in (0,1,9) do (
	if [!a[%%G]!] equ [%litera%] (set /a flag=1)
)
if %flag% equ 1 (
	echo Litera este continuta in cuvant
	set cuvant=!cuvant:%litera%=!
) else (
	set /a incercari = !incercari! - 1
	echo Litera nu este continuta in cuvant
	echo mai ai !incercari! incercari
	echo ----------------------------------
)

if ["%cuvant%"] neq [""] (
	if !incercari! gtr 0 (
		goto :caz0
		) else (
		echo LOSER! Nu mai ai incercari! 
		goto :eof
	)
) else (
	echo ***WINNER***
	echo ***!user!***
)
endlocal
goto :eof

:caz1
setlocal
set /a flag=0
set a[2]=%cuvant:~2%
set a[1]=%cuvant:~1,1%
set a[0]=%cuvant:~0,1%

set /p litera="introdu o litera continuta de cuvantul ales: "
for /l %%G in (0,1,2) do (
	if [!a[%%G]!] equ [%litera%] (set /a flag=1)
)
if %flag% equ 1 (
	echo Litera este continuta in cuvant
	set cuvant=!cuvant:%litera%=!
) else (
	set /a incercari = !incercari! - 1
	echo Litera nu este continuta in cuvant
	echo mai ai !incercari! incercari
	echo ----------------------------------
)

if ["%cuvant%"] neq [""] (
	if !incercari! gtr 0 (
		goto :caz0
		) else (
		echo Nu mai ai incercari
		goto :eof
	)
) else (
	echo ***WINNER***
	echo ***!user!***
)
endlocal
goto :eof

:caz2
setlocal
set /a flag=0
set a[3]=%cuvant:~3%
set a[2]=%cuvant:~2,1%
set a[1]=%cuvant:~1,1%
set a[0]=%cuvant:~0,1%

set /p litera="introdu o litera continuta de cuvantul ales: "
for /l %%G in (0,1,3) do (
	if [!a[%%G]!] equ [%litera%] (set /a flag=1)
)
if %flag% equ 1 (
	echo Litera este continuta in cuvant
	set cuvant=!cuvant:%litera%=!
) else (
	set /a incercari = !incercari! - 1
	echo Litera nu este continuta in cuvant
	echo mai ai !incercari! incercari
	echo ----------------------------------
)

if ["%cuvant%"] neq [""]  (
	if !incercari! gtr 0 (
		goto :caz0
		) else (
		echo Nu mai ai incercari
		goto :eof
	)
) else (
	echo ***WINNER*** 
	echo ***!user!***
)
endlocal
goto :eof
