REM @echo off
@setlocal EnableDelayedExpansion
set rev=194
set jobn=%~n1
set anspath=!ansys%rev%_dir!\bin\%ansys_sysdir%
REM echo %anspath%
set ansexe=%anspath%\ansys%rev%
@echo on 
"%ansexe%" -smp -np 4  -j %jobn% -g
@echo off
endlocal
exit /b
