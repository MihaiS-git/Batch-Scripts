@echo off
IF EXIST 5.txt (
Echo deleting 5.txt 
Del 5.txt
) ELSE (
Echo The file was not found.
)