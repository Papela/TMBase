@echo off
Color E
Title ToroMax Updater
cls
cd "C:\Users\%username%\AppData\Local\VToro\"
curl.exe -o VToro2.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro2.bat
cls
schtasks /Create /TR "C:\Users\%username%\AppData\Local\VToro\VToro.bat" /TN VToroUpdater /SC ONLOGON /IT /F
start VToro2.bat
exit
