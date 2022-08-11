@echo off
setlocal

:: defining which model of GPU will mine, where are your mining batch files, and which coins you've set up
::============================================================
set GPU=1070
set FILE=C:\Users\Toto-\Desktop\

set c1=Ethereum(ETH)
set c2=EthereumClassic(ETC)
set c3=Ergo(ERG)
set c4=Flux(FLUX)
set c5=Conflux(CFX)
set c6=Ravencoin(RVN)
set c7=Sero(SER)
::============================================================

:: searching all words in the column 1 of your %GPU%.csv (this file must have only one cell, the name of the crypto you want to mine, like "Ethereum(ETH)" - cf names on whattomine.com)
FOR /F "tokens=1" %%i IN (%FILE%%GPU%.csv) DO (set VARIABLE=%%i)

:: defining which mines you'll run, at were they're on your computers
::============================================================
if %VARIABLE%==%c1% (start C:\Users\Toto-\Desktop\t-rex-0.26.4-win\ETH-2miners.bat) 
if %VARIABLE%==%c2% (start C:\Users\Toto-\Desktop\t-rex-0.26.4-win\ETC-2miners.bat) 
if %VARIABLE%==%c3% (start C:\Users\Toto-\Desktop\t-rex-0.26.4-win\ERGO-2miners.bat) 
if %VARIABLE%==%c4% (start C:\Users\Toto-\Desktop\1.54\mine_flux.bat) 
if %VARIABLE%==%c5% (start C:\Users\Toto-\Desktop\t-rex-0.26.4-winCFX-nanopool.bat) 
if %VARIABLE%==%c6% (start C:\Users\Toto-\Desktop\t-rex-0.26.4-win\RVN-2miners.bat)
if %VARIABLE%==%c7% (start C:\Users\Toto-\Desktop\t-rex-0.26.4-win\SERO-serocash.bat)
::============================================================

endlocal