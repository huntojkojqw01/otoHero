#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
; Press Esc to terminate script, Pause/Break to "pause"

Global $g_bPaused = False

HotKeySet("{PAUSE}", "TogglePause")
HotKeySet("!q", "Terminate")
HotKeySet("+!d", "ShowMessage") ; Shift-Alt-d
HotKeySet("!o", "play") ; Shift-Alt-d

While 1
    Sleep(100)
WEnd

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
	MouseClick($MOUSE_CLICK_LEFT)
	Sleep("100")
	Send("^r")
	Sleep("100")
	Send("{TAB}")
	Sleep("100")
	Send("manager")
	Sleep("100")
	Send("{F3}")
	EndFunc