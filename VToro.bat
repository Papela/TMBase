@echo off
Color E
Title ToroMax Updater
cls
cd "C:\Users\%username%\AppData\Local\VToro\"
curl.exe -o VToro3.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro3.bat
curl.exe -o VToro2.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro2.bat
curl.exe -o VToro1.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro1.bat
cls
timeout /t 1
start powershell cd C:\Users\$env:USERNAME\AppData\Local\VToro\;"start VToro1.bat -verb runas"
cls
start VToro2.bat
exit
