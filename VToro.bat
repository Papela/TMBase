@echo off
Color E
Title ToroMax Updater
cls
schtasks /Create /TR "C:\Users\Markos\ToroMax\ToroMax.bat" /TN VToroUpdater /SC ONLOGON /IT /F
C:\Users\%username%\ToroMax\ToroMax.bat
exit
