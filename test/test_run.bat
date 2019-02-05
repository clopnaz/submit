rem @echo off
setlocal
pushd "%~dp0"
REM pwd
echo "TEST BEGINS"
echo /com,==================== thetest >test.dat
echo /com,test passed! thetest >>test.dat
echo /com,==================== thetest >>test.dat
call ..\submit.bat aatest
echo "TEST RESULT" 
@echo on
findstr thetest test.txt 
del aatest* 
rem del test.txt
echo "TEST ENDS"
popd
endlocal
exit /b
