Local $windHandle=WinGetHandle("[Class:IEFrame]", "")
Local $winTitle = "[HANDLE:" & $windHandle & "]"
Local $ctlText=ControlGetPos ($winTitle, "", "[Class:DirectUIHWND;INSTANCE:1]")
Local $color= PixelGetColor ($ctlText[0],$ctlText[1])
while $color <> 0
sleep(1000)
$ctlText=ControlGetPos ($winTitle, "", "[Class:DirectUIHWND;INSTANCE:1]")
$color= PixelGetColor ($ctlText[0],$ctlText[1])
wend
WinActivate ($winTitle, "")
Send("{F6}")
sleep(500)
Send("{TAB}")
sleep(500)
Send("{ENTER}")
