# CryptoSwap

<h3>ABSTRACT:</h3>
#1: Those files are the first version of CryptoSwap, which enables to swap on the most efficient mining software each x minutes.<br>
<br>
#2: Some improvements can obviously be done. Mainly the auto-swap system for a RIG with different GPU models. <br>
<br>
#3: Everyone can use those scripts and modify them. Please contact me on github if there's something wrong. <br>
<br>
#4: I'm not responsible of your mining set-ups. Please DYOR.<br>

<h3>TUTORIALS:</h3>
If you need help, there're videos about the set up (in french atm): [youtube.com/](https://www.youtube.com/playlist?list=PLVkpvudLgb2nfsEBn600AzkpIT7OJxm_S)


<h3>HOW TO MAKE IT WORK?</h3>

<h4>Let's begin with miners:</h4>
1) Choose which cryptos you want to mine <br>
2) Download all miners you want to use (example: t-rex-x.xx.x-win, NBMiner_Win, ...) <br>
3) Put it somewhere (example: Desktop) on your computer <br>
4) Inside of those files, edit miners.bat of cryptos you've chosen (add stratum, adress, parameters, overclocks, etc.) <br>
Rem: If you gonna use lolMiner, please put lolMiner.exe in the same directory/file than setupminers.bat. Same for gminer, please put miner.exe in the same directory/file than setupminers.bat. <br>

<h4>Let's begin with CryptoSwap:</h4>
5) Download launcher.bat and setupminers.bat <br>
6) Put it somewhere (example: Desktop) on your computer <br>
Rem: If you gonna use lolMiner, please put lolMiner.exe in the same directory/file than setupminers.bat* <br>
7) Edit setupminers and add: the model of the GPU, which coins you are okay to mine, directories of miners (everything between ====), and the miner which will be launched if the most profitable crypto isn't one you've set up <br>
8) Edit launcher and modify TIMERSEC (example: 10 is for 10s. 3600s is for 1h) <br>

<h4>Let's collect datas:</h4>
9) Go on <a href="https://whattomine.com/">https://whattomine.com/</a> and add every hashrates of the algorithms you're okay to mine (cf 1) and 7)) <br>
10) Click on Calculate, and copy the url <br>
11) Launch Datas.ods (example: with Open Office Calc, it's free) <br>
Rem: You'll have to let this file opened 24h/24. <br>
12) In the second sheet, click on A1 then Insertion > Link with external datas. Then paste the url of your GPU's datas from whattomine <br>
13) Click on "Actualize each x seconds" and modify that (example: 60s) <br>
14) Click on Tools > Macros > "Edit macros". Then select OpenOffice Basic... <br>
15) Click on Datas.odt > Standard > ExportCSV. Then launch the macro (it gonna run 24h/24) <br>
Rem1: This macro creates each x min (example: 14min 58s) a new file: C:\Users\Toto-\Desktop\1070.csv; in which there's the new crypto to mine <br>
Rem2: You can modify this file directory, and the timer. To do this, select Tools > Macros > "Edit macros" > OpenOffice Basic... > Datas.odt > Standard > ExportCSV > Edit <br>
---      To change name and directory, modify: "C:\Users\Toto-\Desktop\1070.csv" <br>
---      To change the timer, modify: "wait 898000" (15 min x 60000 millisec/min = 900000 millisec. 3600000 millisec is for 1h)

<h4>Let's go !</h4>
11) Launch launcher.bat <br>
12) Enjoy



<h3>BUT... HOW DOES IT REALLY WORK?</h3>

First of all, datas are from whattomine.com. After selecting all parameters, clicking on "Calculate" enables you to find the bettest cryptos to mine; with a "dynamic" URL.<br>
Using Open Office Calc, you can import an html table; which will be refreshed all x minutes in this software. On the first sheet, you'll also extract the crypto to mine (to my mind, it's the one with the highest Rev. $; but you can change that by modifying the sheet n°2 of this file).<br>
Using this same software, you can export each x minutes the first sheet of this file (.csv); with the crypto you want to mine for the next y min. <br>
Finaly, when you launch launcher.bat, the script read each y minutes/seconds this .csv, and use setupminers.bat to launch the right miner.
