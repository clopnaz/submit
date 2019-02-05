@echo off
@setlocal EnableDelayedExpansion
set rev=192
set inpfile=%~dpf1.dat
set outfile=%~dpf1.txt
set jobn=%~n1
set anspath=!ansys%rev%_dir!\bin\%ansys_sysdir%
REM echo %anspath%
set ansexe=%anspath%\ansys%rev%
@echo on 
"%ansexe%" -dis -np 4 -b -i %inpfile% -o %outfile% -j %jobn%
@echo off
endlocal
exit /b
