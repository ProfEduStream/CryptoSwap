# CryptoSwap

ABSTRACT
Those files are the first version of a CryptoSwap programm, which enables to swap on the most efficient mining software each xx minutes.
Some improvements can obviously be done.

HOW TO MAKE IT WORK?

Let's begin with miners
1) Choose which cryptos you want to mine
2) Download all miners you want to use (example: t-rex-x.xx.x-win, NBMiner_Win, ...)
3) Put it somewhere (example: Desktop) on your computer
4) Inside of those files, edit miners of cryptos you've chosen (add stratum, adress, parameters, overclocks, etc.)
Rem: If you gonna use lolMiner, please put lolMiner.exe in the same directory/file than setupminers.bat*

Let's begin with CryptoSwap
5) Download launcher.bat and setupminers.bat
6) Put it somewhere (example: Desktop) on your computer
Rem: If you gonna use lolMiner, please put lolMiner.exe in the same directory/file than setupminers.bat*
7) Edit setupminers and add: the model of the GPU, where are your mining files, which coins you are okay to mine, and directories of miners (everything between ====)
8) Edit launcher and modify TIMERSEC (example: 10 is for 10s. 3600s is for 1h)

Let's collect datas
7) Launch Datas.odt with LibreOfficeCalc (for example), and let it open 24h/24;
8) Accept to actualize datas;
9) In Tools > Macros > "Edit macros", select OpenOffice Basic...
10) In Datas.odt > Standard > ExportCSV, launch the macro (it gonna run 24h/24);
Rem1: This macro creates each 15 minutes a new file: C:\Users\Toto-\Desktop\1070.csv; in which there's the new crypto to mine
Rem2: You can modify this file directory, and the timer. To do this, select Tools > Macros > "Edit macros" > OpenOffice Basic... > Datas.odt > Standard > ExportCSV > Edit
      To change name and directory, modify: "C:\Users\Toto-\Desktop\1070.csv"
      To change the timer, modify: "wait 900000" (15 min x 60000 millisec/min = 900000 millisec. 3600000 millisec is for 1h)

Let's go !
11) Launch launcher.bat
12) Enjoy

