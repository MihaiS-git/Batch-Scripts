@echo off
set /a sp=0
set /a si=0

:Loop

set /a si = %si% + %1
echo si=%si%
set /a sp = %sp% + %2
echo sp=%sp%
