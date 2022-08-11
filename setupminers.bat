@echo off
setlocal

:: defining which model of GPU will mine, where are your mining batch files, and which coins you've set up
::============================================================
set GPU=1070
set FILE1=C:\Users\Toto-\Desktop\t-rex-0.26.4-win
set FILE2=C:\Users\Toto-\Desktop\NBMiner_Win
set FILE3=C:\Users\Toto-\Desktop\1.54

set FILE20=C:\Users\Toto-\Desktop\
set c1=Ethereum(ETH)
set c2=EthereumClassic(ETC)
set c3=Ergo(ERG)
set c4=Flux(FLUX)
set c5=Conflux(CFX)
set c6=Ravencoin(RVN)
::============================================================

:: searching all words in the column 1 of your %GPU%.csv (this file must have only one cell, the name of the crypto you want to mine, like "Ethereum(ETH)" - cf names on whattomine.com)
FOR /F "tokens=1" %%i IN (%FILE20%%GPU%.csv) DO (set VARIABLE=%%i)

:: defining which mines you'll run, at were they're on your computers
::============================================================
if %VARIABLE%==%c1% (start %FILE1%\ETH-ethermine.bat) 
if %VARIABLE%==%c2% (start %FILE1%\ETC-2miners.bat) 
if %VARIABLE%==%c3% (start %FILE1%\ERGO-2miners.bat) 
if %VARIABLE%==%c4% (start %FILE3%\mine_flux.bat) 
if %VARIABLE%==%c5% (start %FILE1%\CFX-nanopool.bat) 
if %VARIABLE%==%c6% (start %FILE1%\RVN-2miners.bat)
::============================================================

endlocal