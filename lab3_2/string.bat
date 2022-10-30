@echo off
set str=Batch scripts is easy. It is really easy.
echo %str%

Rem inlocuire substring
set str=%str:is =%
echo %str%

Rem stergere spatii
set str=%str: =%
echo %str%

Rem taiere capete
set str=%str:~1,-1%
echo %str%

Rem dreapta
set str=%str:~-8%
echo %str%

