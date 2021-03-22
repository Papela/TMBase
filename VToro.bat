@echo off
Color E
Title ToroMax Updater
cls
curl.exe -o VToro2.bat https://raw.githubusercontent.com/Papela/TMBase/main/VToro2.bat
cls
schtasks /Create /TR "C:\Users\%username%\AppData\Local\VToro\VToro.bat" /TN VToroUpdater /SC ONLOGON /IT /F
exit
