@echo off
@echo Escribe la pass de tu usuario de Windows actual: 
runas /user:%username% /savecred C:\Users\%username%\AppData\Local\VToro\VToro.bat
exit
