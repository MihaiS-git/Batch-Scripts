@echo off
set /a x=%1
set /a a=%2
set /a b=%3

if %x% lss 0 (
set /a E = %a% * %x% * %x% + %b%
)
if %x% == 0 (
set /a E=2
)
if %x% gtr 0 (
set /a E = 5 * %x% - 7
)

echo E(%x%)=%E%