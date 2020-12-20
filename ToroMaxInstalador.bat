@echo off

@echo Actualizacion de ToroMax en curso...
cd "C:\Users\%username%\ToroMax\"
curl.exe -o ToroMax.bat https://srv-store6.gofile.io/download/T9pNxZ/ToroMax.bat
curl.exe -o DesinstalarToroMax.bat https://srv-store6.gofile.io/download/Ox8HGb/DesinstalarToroMax.bat
timeout /t 2
cls
@echo ToroMax actualizado con exito
start C:\Users\%username%\ToroMax\ToroMax.bat
exit