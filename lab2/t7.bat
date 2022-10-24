@echo off
SET string=%1
CALL SET substring=%%string: =%%
ECHO %substring%