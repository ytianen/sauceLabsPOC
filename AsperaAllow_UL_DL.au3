Winwait("Confirm - IBM Aspera Connect")
While (WinExists("Confirm - IBM Aspera Connect"))
	WinActivate("Confirm - IBM Aspera Connect")
	Sleep(500)
	ControlClick("Confirm - IBM Aspera Connect","_allowBtnWindow","[CLASS:Qt5QWindowIcon; INSTANCE:4]")
	Sleep(1000)
WEnd