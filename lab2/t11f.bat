@echo off
SET /A p=%3
SET /A pozitie = 1
SET /A divnumber = %p% / 4 
SET /A prodnumber = %divnumber% * 4
SET /A rest = %p% - %prodnumber%
IF %rest% EQU 0 (ECHO E divizibil!) ELSE (ECHO Nu e divizibil!)