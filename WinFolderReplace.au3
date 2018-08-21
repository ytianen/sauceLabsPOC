WinWait("Browse For Folder")
WinWaitClose("Browse For Folder")
WinWait("Browse For Folder")

Local $i = 1
While $i < 2
    WinActivate("Browse For Folder");
    WinWaitActive("Browse For Folder");
    Sleep(2000);
    ControlFocus("Browse For Folder","",14148);
    ControlSetText("Browse For Folder","",14148,$CmdLine[$i]);
    ;ControlSetText("Browse For Folder","",14148,$CmdLineRaw);
    Sleep(2000)
    ControlClick("Browse For Folder","",1)
    $i = $i+1
WEnd