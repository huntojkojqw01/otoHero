#include <ImageSearch.au3>

HotKeySet("p", "checkForImage")

global $y = 0, $x = 0

Func checkForImage()
Local $search = _ImageSearch('fn1132.bmp', 0, $x, $y, 0)
If $search = 1 Then
MouseMove($x, $y, 10)
Else
   ToolTip("ko thay")
EndIf
EndFunc

while 1
sleep(200)
WEnd