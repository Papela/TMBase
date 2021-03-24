@echo off

set /p confirmar= Seguro que quieres desinstalar ToroMax? (si/no): 

if %confirmar%==si (goto ai) else (goto aj)

:ai
@echo Desinstalando ToroMax...
tiemout /t 2 /NOBREAK
cd C:\Users\%username%\AppData\Local\Temp
curl.exe -o UninstallToroMax.bat https://raw.githubusercontent.com/Papela/TMBase/main/UninstallToroMax.bat
timeout /t 1
start UninstallToroMax.bat
exit
