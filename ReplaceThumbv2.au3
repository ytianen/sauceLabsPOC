;RunWait(@comspec & ' /c msiexec.exe /i "https://github.com/jianfengs/sauceLabsPOC/blob/master/AsperaConnect-ML-3.6.6.119698.msi?raw=true"  /quiet')

;Sleep(2000)

;Run(@comspec & ' /c C:\Users\selenium\AppData\Local\Programs\Aspera\Aspera Connect\bin\asperaconnect.exe')
;$CmdLine[1]

WinWait("Open", "File &name")
WinActivate("Open", "File &name");
WinWaitActive("Open", "File &name");
Sleep(2000);
ControlFocus("Open","",1148);
ControlSetText("Open","",1148,$CmdLine[1]);
Sleep(2000)
ControlClick("Open","",1)
Winwait("Confirm - Aspera Connect")
While (WinExists("Confirm - Aspera Connect"))
	WinActivate("Confirm - Aspera Connect")
	Sleep(500)
	ControlClick("Confirm - Aspera Connect","_allowBtnWindow","[CLASS:Qt5QWindowIcon; INSTANCE:4]")
	Sleep(1000)
WEnd

WinWait("Open", "File &name")
WinActivate("Open", "File &name");
WinWaitActive("Open", "File &name");
Sleep(2000);
ControlFocus("Open","",1148);
ControlSetText("Open","",1148,$CmdLine[2]);
Sleep(2000)
ControlClick("Open","",1)