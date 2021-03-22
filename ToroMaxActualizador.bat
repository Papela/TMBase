@echo off

@echo Actualizacion de ToroMax en curso...
cd "C:\Users\%username%\ToroMax\"
curl.exe -o ToroMax.bat https://raw.githubusercontent.com/Papela/TMBase/main/ToroMax.bat
curl.exe -o DesinstalarToroMax.bat https://raw.githubusercontent.com/Papela/TMBase/main/DesinstalarToroMax.bat
cd "C:\Users\%username%\AppData\Local\VToro"
curl.exe -o VToro.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro.bat
timeout /t 3
cls
@echo ToroMax actualizado con exito
timeout /t 3
cls
@echo Escribe la pass de tu usuario de Windows actual: 
runas /user:%username% /savecred C:\Users\%username%\AppData\Local\VToro\VToro.bat
timeout /t 3 /NOBREAK
cls
start C:\Users\%username%\ToroMax\ToroMax.bat
exit
