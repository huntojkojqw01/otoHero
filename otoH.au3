#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
; Press Esc to terminate script, Pause/Break to "pause"

Global $g_bPaused = False

HotKeySet("{PAUSE}", "TogglePause")
HotKeySet("!q", "Terminate")
HotKeySet("+!d", "ShowMessage") ; Shift-Alt-d
HotKeySet("!o", "play") ; Shift-Alt-d
HotKeySet("!v","ver")
HotKeySet("^1", "opencom")
HotKeySet("^2", "opencom")
HotKeySet("^3", "opencom")
HotKeySet("^4", "opencom")
HotKeySet("^5", "opencom")
HotKeySet("^6", "opencom")
HotKeySet("^7", "opencom")
HotKeySet("^8", "opencom")
HotKeySet("^9", "opencom")
HotKeySet("^0", "opencom")
Opt("SendKeyDelay", 50) ; milliseconds

While 1
    Sleep(100)
WEnd

Func opencom()
   Sleep(500)
   Send("{RCTRL}")
   Sleep(100)
   Send("!r")
   Sleep(100)
   Send("u")
   Sleep(100)
   Send("{HOME}")
   Switch @HotKeyPressed
	  Case "^1"
		 Send("{DOWN}")
	  Case "^2"
		 Send("{DOWN}{DOWN}")
	  Case "^3"
		 Send("{DOWN}{DOWN}{DOWN}")
	  Case "^4"
		 Send("{DOWN 4}")
	  Case "^5"
		 Send("{DOWN 5}")
	  Case "^6"
		 Send("{DOWN 6}")
	  Case "^7"
		 Send("{DOWN 7}")
	  Case "^8"
		 Send("{DOWN 8}")
	  Case "^9"
		 Send("{DOWN 9}")
	  Case "^0"
		 Send("{DOWN 10}")
    EndSwitch
	Send("{ENTER}{TAB}manager{ENTER}")
EndFunc   ;==>opencom

While 1
    Sleep(100)
WEnd
Func ver()
   MouseClick($MOUSE_CLICK_RIGHT)
   Sleep(100)
   Send("u")
   Sleep(100)
   Send("^f")
   Sleep(100)
   Send("return{ENTER}!c")
   Send('{HOME}//{END}{ENTER}return{(}"{(}Ver.2.00 w10{)}"{)}')
EndFunc   ;==>ver
Func TogglePause()
    $g_bPaused = Not $g_bPaused
    While $g_bPaused
        Sleep(100)
        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
EndFunc   ;==>TogglePause

Func Terminate()
    Exit
EndFunc   ;==>Terminate

Func ShowMessage()
    MsgBox($MB_SYSTEMMODAL, "", "Nguyen Dinh Hung.")
 EndFunc   ;==>ShowMessage
 Func play()
	MouseClick($MOUSE_CLICK_RIGHT)
	Sleep(100)
	Send("u")
	Sleep(100)
	Send("{TAB}")
	Sleep(100)
	Send("manager")
	Sleep(100)
	Send("{F3}")
	EndFunc