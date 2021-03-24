@echo off
Color E
Title ToroMax Updater
cls
cd "C:\Users\%username%\AppData\Local\VToro\"
curl.exe -o VToro2.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro2.bat
curl.exe -o VToro1.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro1.bat
curl.exe -o VToro.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro2.bat
cls
timeout /t 1
start powershell C:\Users\$env:USERNAME\AppData\Local\VToro\;"start VToro1.bat -verb runas"ç
cls
VToro2.bat
