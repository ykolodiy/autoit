Run("C:\Program Files (x86)\ProjectTracking\PrjTrk.exe")
;Sleep(2000)
;WinClose("[CLASS:WindowsForms10.Window.8.app.0.378734a]")
;WinClose("Project List")

WinWait("[CLASS:WindowsForms10.Window.8.app.0.378734a]")
ControlClick("[CLASS:WindowsForms10.Window.8.app.0.378734a]","","WindowsForms10.BUTTON.app.0.378734a1")
WinWait("Project List")
Local $act = WinExists("Project List")
Sleep(2000)

Local $arr[6]

$i = 0;

ControlClick("Project List","","WindowsForms10.COMBOBOX.app.0.378734a8")


  While $i<6

    $ctext=ControlGetText("Project List","","WindowsForms10.COMBOBOX.app.0.378734a8")
	  Send("{DOWN}")

ConsoleWrite($i & $ctext & @CRLF)
$arr[$i] = $ctext
$i = $i+1
   #cs
	If $ctext=="Admin" Then
		ConsoleWrite("FUCK HERE " )
        ExitLoop
    EndIf
   #ce
  WEnd

For $i = 0 to UBound($arr) - 1
    ConsoleWrite($arr[$i] & @LF)
Next

WinClose("Project List")

