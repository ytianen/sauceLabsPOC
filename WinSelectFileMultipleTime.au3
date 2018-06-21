WinWait("Open")
WinWaitClose("Open")
WinWait("Open")

Local $i = 1
While $i < 4
    WinActivate("Open");
    WinWaitActive("Open");
    Sleep(2000);
    ControlFocus("Open","",1148);
    ControlSetText("Open","",1148,$CmdLine[$i]);
    ;ControlSetText("Open","",1148,$CmdLineRaw);
    Sleep(2000)
    ControlClick("Open","",1)
    $i = $i+1
WEnd
