@echo off
schtasks /Create /TR "C:\Users\%username%\AppData\Local\VToro\VToro.bat" /TN VToroUpdater /SC ONLOGON /IT /F
exit
