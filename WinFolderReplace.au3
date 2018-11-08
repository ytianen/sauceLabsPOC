WinWait("Browse For Folder")

WinActivate("Browse For Folder");
WinWaitActive("Browse For Folder");
Sleep(2000);
ControlFocus("Browse For Folder","",14148);
ControlSetText("Browse For Folder","",14148,$CmdLine[i]);
Sleep(2000)
ControlClick("Browse For Folder","",1)

WEnd
