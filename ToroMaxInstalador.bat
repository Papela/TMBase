@echo off

:inicio
color 3
title Instalador ToroMax V1.02
cls
@echo Bienvenido al instalador de ToroMax.
@echo Como quieres instalarlo
set /p mi=1.- Instalacion normal / 2.- Instalacion personalizada (lenta): 

 if %mi%==1 (goto mi1) else (goto mi2)

:mi1
cls
@echo Has escogido la instalacion normal.
@echo Durante este proceso se instalara ToroMax 1.22 y su Desinstalador.
@echo Mientras se esta instalando intente no tocar nada. (Aprox: 20s)
@echo Para cancelar la instalacion use: ctrl + c
pause
cls
@echo Instalando ToroMax...
cd "C:\Users\%username%\"
mkdir ToroMax
timeout /t 2
cd "C:\Users\%username%\ToroMax\"
curl.exe -o nircmd.zip http://www.nirsoft.net/utils/nircmd.zip
curl.exe -o ToroMax.bat https://raw.githubusercontent.com/Papela/TMBase/main/ToroMax.bat
curl.exe -o ToroMaxVersion.txt https://raw.githubusercontent.com/Papela/TMBase/main/ToroMaxVersion.txt
curl.exe -o DesinstalarToroMax.bat https://raw.githubusercontent.com/Papela/TMBase/main/DesinstalarToroMax.bat
start PowerShell Expand-Archive "C:\Users\%username%\ToroMax\nircmd.zip" C:\Users\%username%\ToroMax\NirCMD
timeout /t 2
del "C:\Users\%username%\ToroMax\nircmd.zip"
cd "C:\Users\%username%\ToroMax\NirCMD\"
nircmd.exe shortcut "C:\Users\%username%\ToroMax\ToroMax.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ToroMax\" "ToroMax"
nircmd.exe shortcut "C:\Users\%username%\ToroMax\DesinstalarToroMax.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ToroMax\" "DesinstalarToroMax"
cd "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\"
mkdir ToroMax
timeout /t 2
cls
@echo ToroMax Instalado con exito
C:\Users\%username%\ToroMax\ToroMax.bat
exit

:mi2

 if %mi%==2 (goto mi2) else (goto mierror)

:mi2
cls
@echo Has escogido la Opcion 2
@echo Actualmente este modo de instalacion no esta disponible.
@echo Vuelva al menu pulsando cualquier boton para escoger la primera opcion. :v
pause
goto inicio

:mierror
color 4
cls
@echo Esa opcion no esta disponible!
timeout /t 4 /NOBREAK
goto inicio