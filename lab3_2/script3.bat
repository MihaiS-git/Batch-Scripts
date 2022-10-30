@echo off

SET test=%1
set /a ok=0

SET result=%test:a=%
if not %result% equ %test% (set /a ok=1)

SET result=%test:e=%
if not %result% equ %test% (set /a ok=1)

SET result=%test:i=%
if not %result% equ %test% (set /a ok=1)

SET result=%test:o=%
if not %result% equ %test% (set /a ok=1)

SET result=%test:u=%
if not %result% equ %test% (set /a ok=1)

if %ok% equ 0 (echo Nu contine) else (echo Contine)
	