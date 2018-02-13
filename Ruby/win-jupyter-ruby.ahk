Run PowerShell.exe
WinActivate PowerShell
; send docker run -ti --rm -p 8888:8888 -v ${{}PWD{}}:/home/jovyan/work jupyter/scipy-notebook{enter}
send docker run -ti --rm -p 8888:8888 -v ${{}PWD{}}:/home/jovyan/work sciruby/iruby-notebook{enter}
MsgBox Wait until server is running
; WinMenuSelectItem Windows, PowerShell, 0&, Edit, Select All
CoordMode, Mouse, Client
WinGetPos, X, Y, Width, Height, Windows PowerShell
BottomX := Width - 200
BottomY := Height - 200
SendEvent {Click 5, 5, down}{click %BottomX%, %BottomY%, up}
Sleep 100
Send {Enter}
PSOutput := Clipboard
RegExMatch(PSOutput, "http://localhost:[0-9a-zA-Z/?]+=[0-9a-f]+", URL)
Run Firefox.exe "%URL%"

