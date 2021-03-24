@echo off
cd "C:\Users\%username%\AppData\Local\VToro\"
curl.exe -o VToro2.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro2.bat
timeout /t 1
start VToro2.bat
curl.exe -o VToro3.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro3.bat
exit
