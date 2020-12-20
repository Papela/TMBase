@echo off
@echo Comprobando actualizaciones...
cd C:\Users\%username%\ToroMax\
curl.exe -LJO https://raw.githubusercontent.com/Papela/TMBase/main/ToroMaxVersion.txt
timeout /t 2

:inicio
cls
color a
@echo -------------------------------------------
@echo ---:===================D-------------------
@echo -------------------------------------------
set version= 1.2

setlocal enabledelayedexpansion
set SEPARATOR=/
set filecontent=
for /f "delims=" %%a in (ToroMaxVersion.txt) do (
  set currentline=%%a
  set filecontent=!filecontent!!currentline!
)
@echo Version actual: %version%  Ultima Version: %filecontent%

if %version%==%filecontent% (goto oka) else (goto actudisp)

:actudisp
@echo Actualizacion Disponible!!
@echo La actualizacion empezara en 3,2...
timeout /t 4 /NOBREAK
curl.exe -LJO https://raw.githubusercontent.com/Papela/TMBase/main/ToroMaxActualizador.bat
start ToroMaxActualizador.bat
exit

:oka
set /p ejecutar=Que es lo que quieres hacer? 1 = Shutdown, 2 = Mensaje/s, 3= CMD Remote : 

 if %ejecutar%==1 (goto ai) else (goto aj)

:ai
      cls
      color 4
      set /p direccion= Escribe la direccion IP al que le quieres apagar el ordenador: 
      set /p tiempo= Escribe el tiempo que le quieres poner: 
      set /p mensaje= Escribe el mensaje que le quieres poner: 
      @echo 3 segundos para enviar el comando. Si quieres cancelarlo cierra la ventana.
      timeout /t 3
      @echo Comando enviado. :-)
      shutdown -s -f -t %tiempo% -c "%mensaje%" -m \\%direccion%
      timeout /t 1
      goto inicio

:aj
 if %ejecutar%==2 (goto bi) else (goto bj)

     :bi
      cls
      color 5
      set /p direccion2= Escribe la direccion IP al que le quieres enviar el/los mensajes: 
      set /p numm= Escribe el numero de mensajes que le quieres enviar: 
      set /p mensaje2= Escribe el mensaje que le quieres poner: 
      @echo 3 segundos para enviar el comando. Si quieres cancelarlo cierra la ventana.
      timeout /t 3 /NOBREAK
      @echo Comando enviado. :-)
      :loop
      set /a numm=numm-1
      msg * /SERVER:%direccion2% "%mensaje2%"
      if %numm%==0 goto exitloop
      goto loop
      :exitloop
      timeout /t 1
      goto inicio

:bj
 if %ejecutar%==3 (goto ci) else (goto cj)

     :ci
      cls
      color 9
      @echo Instalando requisitos...
      timeout /t 3 /NOBREAK
      cd C:\Users\%username%\ToroMax\
      mkdir /a PSTools
      curl.exe -o PSTools.zip https://download.sysinternals.com/files/PSTools.zip
      timeout /t 2
      start PowerShell Expand-Archive "C:\Users\%username%\ToroMax\PSTools.zip" C:\Users\%username%\ToroMax\PSTools
      timeout /t 3
      cls
      del "C:\Users\%username%\ToroMax\PSTools.zip"
      cd PSTools
      cls
      set /p direccion3= Escribe la direccion del ordenador: 
      start psexec \\%direccion3% -u 1smr2 -p 1smr2 cmd.exe
      @echo Si no ha ocurrido nada significa que no tienes permiso para entrar hay.
      pause
      goto inicio
