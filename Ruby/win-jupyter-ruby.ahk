msgbox %A_WorkingDir%
Run PowerShell.exe
WinActivate PowerShell
; send docker run -ti --rm -p 8888:8888 -v ${{}PWD{}}:/home/jovyan/work jupyter/scipy-notebook{enter}
send docker run -ti --rm -p 8888:8888 -v ${{}PWD{}}:/home/jovyan/work sciruby/iruby-notebook{enter}
