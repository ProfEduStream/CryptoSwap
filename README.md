# CryptoSwap

<h3>ABSTRACT</h3>
Those files are the first version of a CryptoSwap programm, which enables to swap on the most efficient mining software of a single GPU each xx minutes.<br>
Some improvements can obviously be done. <br>
Everyone is autorized to use those scripts and to modify them.

<h3>HOW TO MAKE IT WORK?</h3>

<h4>Let's begin with miners:</h4>
1) Choose which cryptos you want to mine <br>
2) Download all miners you want to use (example: t-rex-x.xx.x-win, NBMiner_Win, ...) <br>
3) Put it somewhere (example: Desktop) on your computer <br>
4) Inside of those files, edit miners of cryptos you've chosen (add stratum, adress, parameters, overclocks, etc.) <br>
Rem: If you gonna use lolMiner, please put lolMiner.exe in the same directory/file than setupminers.bat*

<h4>Let's begin with CryptoSwap:</h4>
5) Download launcher.bat and setupminers.bat <br>
6) Put it somewhere (example: Desktop) on your computer <br>
Rem: If you gonna use lolMiner, please put lolMiner.exe in the same directory/file than setupminers.bat* <br>
7) Edit setupminers and add: the model of the GPU, where are your mining files, which coins you are okay to mine, and directories of miners (everything between ====) <br>
8) Edit launcher and modify TIMERSEC (example: 10 is for 10s. 3600s is for 1h)

<h4>Let's collect datas:</h4>
7) Launch Datas.odt with LibreOfficeCalc (for example), and let it open 24h/24 <br>
8) Accept to actualize datas <br>
9) In Tools > Macros > "Edit macros", select OpenOffice Basic... <br>
10) In Datas.odt > Standard > ExportCSV, launch the macro (it gonna run 24h/24) <br>
Rem1: This macro creates each 15 minutes a new file: C:\Users\Toto-\Desktop\1070.csv; in which there's the new crypto to mine <br>
Rem2: You can modify this file directory, and the timer. To do this, select Tools > Macros > "Edit macros" > OpenOffice Basic... > Datas.odt > Standard > ExportCSV > Edit <br>
---      To change name and directory, modify: "C:\Users\Toto-\Desktop\1070.csv" <br>
---      To change the timer, modify: "wait 900000" (15 min x 60000 millisec/min = 900000 millisec. 3600000 millisec is for 1h)

<h4>Let's go !</h4>
11) Launch launcher.bat <br>
12) Enjoy



<h3>BUT HOW DOES IT REALLY WORK?</h3>

First of all, datas are from whattomine.com. After selecting all parameters, clicking on "Calculate" enables you to find the bettest cryptos to mine; with a new URL.<br>
Using LibreOfficeCalc, you can import an html table; which will be refreshed all xx minutes in this software. On the first sheet, you'll also extract the crypto to mine (to my mind, it's the one with the highest Rev. $)<br>
Using this same software, you can export each xx minutes the first sheet of this file (a .csv); with the crypto you want to mine. <br>
Finaly, when you launch launcher.bat, the script read each xx minutes/seconds this .csv, and use setupminers.bat to launch the right miner.
