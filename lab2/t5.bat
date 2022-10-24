@echo off
set string=%1
set subelim=%2
set subinloc=%3
call set substring=%%string:%subelim%=%subinloc%%%
echo %substring%


