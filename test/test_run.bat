@echo off
setlocal
pushd "%~dp0"
REM pwd
echo "TEST BEGINS"
echo /com,thetest ==================== >aatest.dat
echo /com,thetest test passed! >>aatest.dat
echo /com,thetest ==================== >>aatest.dat
call ..\submit.bat aatest
echo "TEST RESULT" 
findstr /b .thetest aatest.txt 
del aatest* 
echo "TEST ENDS"
popd
endlocal
exit /b
