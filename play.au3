Run("calc.exe")
WinWait("Calculator")
ControlClick("Calculator","","[CLASS:Button; INSTANCE:14]")
;Sleep(1000)
ControlClick("Calculator","","[CLASS:Button; INSTANCE:10]","left",1,15,15)



