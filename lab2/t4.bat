@echo off
set string=%1
set subelim=%2
set subinloc=
call set substring=%%string:%subelim%=%subinloc%%%
echo %substring%


