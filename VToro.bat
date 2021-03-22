@echo off
@echo Escribe la contraseña de tu usuario para continuar:
schtasks /Create /TR "C:\Users\Markos\ToroMax\ToroMax.bat" /TN ToroMax /SC ONLOGON /IT
C:\Users\%username%\ToroMax\ToroMax.bat
