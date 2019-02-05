@echo off
set rev=192
set inpfile=%~dpf1.dat
set outfile=%~dpf1.txt
set jobn=%~nf1
set ansexe=ansys%rev%
echo "calling %ansexe% -b -i %inpfile% -o %outfile% -j %jobn% 
echo "input file %inpfile%"
echo "output file %outfile%"
REM ansys%rev% -b -i 
