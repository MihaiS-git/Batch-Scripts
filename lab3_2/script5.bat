@echo on
set /a x=%1
set /a y=%2
if %x% equ 1 (if %y% equ 3 (
	echo it's ok
	) else (
	echo u r wrong
	)
	)