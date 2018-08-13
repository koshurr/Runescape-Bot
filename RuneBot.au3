HotKeySet("{ESC}", "Terminate")
HotKeySet("!c", "getColor")
HotKeySet("!a", "attackLoop")

Global $color
Global $interval
$interval = 10000

MsgBox(0, "Starting Up", "Starting, use ESCAPE to quit, Alt + C to set color, and Alt + A to attack.")

Func Terminate()
   Exit 1
EndFunc

Func getColor()
   $point = MouseGetPos()
   $color = PixelGetColor($point[0], $point[1])
   MsgBox(0, "Color Set", "The color has been set to " & $color)
EndFunc

Func attackLoop()
   MsgBox(0, "Attacking", "Starting to attack")
   While 1
          $point = PixelSearch(3, 136, 1354, 715, $color)
          if IsArray($point) Then
                 MouseClick("left", $point[0], $point[1])
                 Sleep($interval)
          EndIf
          Sleep(50)
   WEnd
EndFunc

While 1
   sleep(250)
WEnd