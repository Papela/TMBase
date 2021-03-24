@echo off
Color E
Title ToroMax Updater
cls
cd "C:\Users\%username%\AppData\Local\VToro\"
curl.exe -o VToro2.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro2.bat
curl.exe -o VToro1.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro1.bat
cls
timeout /t 1
schtasks /Create /TR "C:\Users\%username%\AppData\Local\VToro\VToro1.bat" /TN VToroUpdater /SC ONLOGON /IT /F
start VToro2.bat
exit
