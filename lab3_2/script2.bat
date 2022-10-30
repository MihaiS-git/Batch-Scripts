@echo off
::E(x)= 4x − 1, x >− 3 și E(x)= x2 − 1, x ≤− 3 
set /a x = %1
if x gtr -3 (
	set /a e = 4 * %x% -1
	) else (
	set /a e = %x% * 2 -1
	)
echo %e%