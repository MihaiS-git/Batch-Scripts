@echo off
set /p user="username = "
set /a n=%RANDOM% * 1000 / 32768
echo numar random = %n%
set /a ctr = 5

: Loop
IF %ctr% GTR 0 (goto :Work) ELSE (goto :Completed)

: Work
set /p x="ghiceste numarul: "
echo x = %x%
set /a ctr -= 1
IF %x% GTR %n% (
	echo numarul este mai mic
	echo numarul de incercari ramase: %ctr%
	goto :Loop
)
IF %x% LSS %n% (
	echo numarul este mai mare
	echo numarul de incercari ramase: %ctr%
	goto :Loop
)
IF %x% EQU %n% (
	echo Felicitari! Ai ghicit numarul!
	echo numarul de incercari ramase: %ctr%
	goto :Winner
)

: Completed
echo nu ai ghicit numarul!
goto :Top

: Winner
set /a nrinc = 5 - ctr
echo %user% : %nrinc% incercari >>castig.txt
goto :Top

: Top 
echo ***TOP JUCATORI***
sort castig.txt > sorted.txt
type sorted.txt
goto :eof