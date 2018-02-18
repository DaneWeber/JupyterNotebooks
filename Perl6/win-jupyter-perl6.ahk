Run PowerShell.exe
WinActivate PowerShell
send docker run -ti --rm -p 8888:8888 -v ${{}PWD{}}:/home/suman/work sumdoc/perl-6-notebook{enter}
MsgBox Wait until server is running
CoordMode, Mouse, Client
WinGetPos, X, Y, Width, Height, Windows PowerShell
BottomX := Width - 200
BottomY := Height - 200
SendEvent {Click 5, 5, down}{click %BottomX%, %BottomY%, up}
Sleep 100
Send {Enter}
PSOutput := Clipboard
RegExMatch(PSOutput, "http://0.0.0.0:([0-9a-zA-Z/?]+=[0-9a-f]+)", URL)
Run Firefox.exe "http://localhost:%URL1%"

