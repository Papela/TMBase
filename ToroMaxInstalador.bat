@echo off

@echo Instalando ToroMax...
cd "C:\Users\%username%\"
mkdir ToroMax
timeout /t 2
cd "C:\Users\%username%\ToroMax\"
curl.exe -o nircmd.zip http://www.nirsoft.net/utils/nircmd.zip
curl.exe -o ToroMax.bat https://srv-store6.gofile.io/download/T9pNxZ/ToroMax.bat
curl.exe -o ToroMaxVersion.txt https://srv-store4.gofile.io/download/a7rh0F/ToroMaxVersion.txt
curl.exe -o DesinstalarToroMax.bat https://srv-store6.gofile.io/download/Ox8HGb/DesinstalarToroMax.bat
start PowerShell Expand-Archive "C:\Users\%username%\ToroMax\nircmd.zip" C:\Users\%username%\ToroMax\NirCMD
timeout /t 2
del "C:\Users\%username%\ToroMax\nircmd.zip"
cd "C:\Users\%username%\ToroMax\NirCMD\"
nircmd.exe shortcut "C:\Users\%username%\ToroMax\ToroMax.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ToroMax\" "ToroMax"
nircmd.exe shortcut "C:\Users\%username%\ToroMax\DesinstalarToroMax.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ToroMax\" "DesinstalarToroMax"
cd "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\"
mkdir ToroMax
timeout /t 2
cls
@echo ToroMax Instalado con exito
C:\Users\%username%\ToroMax\ToroMax.bat
exit