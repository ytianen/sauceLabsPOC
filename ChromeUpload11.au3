
RunWait(@comspec & ' /c msiexec.exe /i "https://github.com/jianfengs/sauceLabsPOC/blob/master/AsperaConnect-ML-3.6.6.119698.msi?raw=true"  /quiet')

Sleep(3000)

Run(@comspec & ' /c C:\Users\selenium\AppData\Local\Programs\Aspera\Aspera Connect\bin\asperaconnect.exe')

Sleep(2000);


WinWait("Open");

WinActivate("Open");

WinWaitActive("Open");


ControlSend("Open","","[CLASS:Edit; INSTANCE:1]","C:\Users\selenium\AppData\Local\Programs\Aspera\Aspera Connect\bin\asperaconnect.exe");

Sleep(2000);
ControlClick("Open","&Open","[CLASS:Button; INSTANCE:1]");


Winwait("Confirm - Aspera Connect");

ControlClick("Confirm - Aspera Connect","_rememberChkWindow","[CLASS:Qt5QWindowIcon; INSTANCE:5]");
Sleep(500);
ControlClick("Confirm - Aspera Connect","_allowBtnWindow","[CLASS:Qt5QWindowIcon; INSTANCE:4]");