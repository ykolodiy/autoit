Run("notepad.exe")
WinWaitActive("Untitled - Notepad")
Send("This is some text.")
WinClose("Untitled - Notepad")
WinWaitActive("Notepad", "Save")
;WinWaitActive("Notepad", "Do you want to save") ; When running under Windows XP
Send("!s")
;;Send("{TAB}")
;Send("{Enter}")



    ; Wait 10 seconds for the Notepad window to appear.
    Local $hWnd = WinWait("[CLASS:Notepad]", "", 10)

    ; Set input focus to the edit control of Notepad using the handle returned by WinWait.
    ControlFocus("Save As", "", "Edit1")
     ControlSetText("Save As", "", "Edit1","fuckme.txt")
	 ;saved on desktop
    ; Wait for 2 seconds.
    ;Sleep(2000)
	ControlClick("Save As", "", "Button1")