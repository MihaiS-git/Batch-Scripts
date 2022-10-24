@echo off
if exist d:\it\scripts\lab2\*.bat (echo .bat files exist)
set _department=IT
if defined _department (echo variable _department is defined)
set _commission=100
set salary=1000
IF DEFINED _commission SET /A _salary=%_salary% + %_commission%