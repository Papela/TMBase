@echo off
@echo Comprobando actualizaciones...
title Comprobando actualizaciones
cd C:\Users\%username%\ToroMax\
curl.exe -LJO https://raw.githubusercontent.com/Papela/TMBase/main/ToroMaxVersion.txt
timeout /t 2

:inicio
title ToroMax V1.25
cls
color a
@echo -------------------------------------------
@echo ---:===================D-------------------
@echo -------------------------------------------
set version= 1.25
cd C:\Users\%username%\ToroMax\
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
title ToroMax
@echo Que quieres hacer?
set /p ejecutar=1 = Shutdown, 2 = Mensaje/s, 3= CMD Remote, 4= Ordenador Remoto, 5= Direcciones IP de clase: 

 if %ejecutar%==1 (goto ai) else (goto aj)

:ai
      cls
      color 1
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
      set /p direccion3= Escribe la direccion del ordenador: 
      start psexec \\%direccion3% -u 1smr2 -p 1smr2 cmd.exe
      @echo Si no ha ocurrido nada significa que no tienes permiso para entrar hay.
      pause
      goto inicio

:cj
 if %ejecutar%==4 (goto di) else (goto dj)

:di
cls
color B
set /p direccion4= Escribe la direccion del ordenador al que te quieres conectar: 
mstsc /v:%direccion4% /admin
goto inicio

:dj
 if %ejecutar%==5 (goto ei) else (goto ej)

:ei
cls
color B
@echo Aqui tienes las direcciones IP de clase.
timeout /t 3
cd C:\Users\%username%\ToroMax\
curl.exe -u amaguadalupekoa.eu5.org:kktua124 -O ftp://amaguadalupekoa.eu5.org/ToroMax/IPs.txt
timeout /t 3
start IPs.txt
timeout /t 2
del IPs.txt
goto inicio

:ej
if %ejecutar%==1015 (goto aaa) else (goto aaj)

:aaa
title ToroMax V1.25 -- Admin Panel
color F4
cls
@echo Estas a punto de entrar en el panel de administrador.
set /p adminpass= Escribe la contrasena del administrador: 
cls
color c
@echo Contrasena incorrecta :c
timeout /t 4
goto inicio

:aaj
cls
color c
@echo Comando incorrecto. :c
timeout /t 4
goto inicio
