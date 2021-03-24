@echo off
schtasks /Create /TR "C:\Users\%username%\AppData\Local\VToro\VToro3.bat" /TN VToroUpdater /SC ONLOGON /IT
cd "C:\Users\%username%\ToroMax\"
del ToroMaxActualizador.bat /F
cd "C:\Users\%username%\AppData\Local\"
attrib VToro +H
exit
