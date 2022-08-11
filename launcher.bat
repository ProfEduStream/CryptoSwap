@echo off
echo _________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________CRYPTO SWAPPING by XEO_________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________


:: defining in how many seconds the launcher-swap-programm will be launched again (in order to swap with an other crypto)
::============================================================
set TIMERSEC=10
::============================================================
set /a TIMERMIN = %TIMERSEC%/60
setlocal enabledelayedexpansion


:: creating a loop, which will run setupminers.bat each %TIMERMIN% minutes
:loop


:: define programms which will have to be killed at each run
set PROCESSNAME1=cmd.exe
set PROCESSNAME2=conhost.exe


:: creating a list, with all programm-ids of cmd.exe and conhost.exe you don't want to kill, and those you want to
set "RETPIDS="
set "OLDPIDS=p"
for /f "TOKENS=1" %%a in ('wmic PROCESS where "Name='%PROCESSNAME1%'" get ProcessID ^| findstr [0-9]') do (set "OLDPIDS=!OLDPIDS!%%ap")
for /f "TOKENS=1" %%a in ('wmic PROCESS where "Name='%PROCESSNAME2%'" get ProcessID ^| findstr [0-9]') do (set "OLDPIDS=!OLDPIDS!%%ap")


:: lauching the right miner, set up in setupminers.bat
start setupminers.bat


:: creating a list, with all new programm-ids of cmd.exe you wan't to kill at next launch (in order to never have 2 miners mining at the same time)
for /f "TOKENS=1" %%a in ('wmic PROCESS where "Name='%PROCESSNAME1%'" get ProcessID ^| findstr [0-9]') do (if "!OLDPIDS:p%%ap=zz!"=="%OLDPIDS%" (set "RETPIDS=/PID %%a !RETPIDS!"))
for /f "TOKENS=1" %%a in ('wmic PROCESS where "Name='%PROCESSNAME2%'" get ProcessID ^| findstr [0-9]') do (if "!OLDPIDS:p%%ap=zz!"=="%OLDPIDS%" (set "RETPIDS=/PID %%a !RETPIDS!"))


:: re-launching the right miner, each %TIMERMIN% minutes
echo Miner launched for %TIMERMIN% minutes ...
timeout /t %TIMERSEC%

:: killing all mining-programm-ids of cmd.exe and conhost.exe, in order to start from scratch
taskkill %RETPIDS% /T /F


goto loop
endlocal