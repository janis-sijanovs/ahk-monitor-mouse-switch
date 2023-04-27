#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode, Mouse, Screen ; Set mouse coordinates relative to the screen
SysGet, M1, Monitor, 1
SysGet, M2, Monitor, 2
SysGet, M3, Monitor, 3

^XButton1:: ;mouse cursor to the center of secondary monitor
  MouseGetPos, mouseX, mouseY
  if (mouseX >= M2Left && mouseX <= M2Right && mouseY >= M2Top && mouseY <= M2Bottom) {
    MouseMove, (M1Left + M1Right)//2, (M1Top + M1Bottom)//2
  }
  else if (mouseX >= M1Left && mouseX <= M1Right && mouseY >= M1Top && mouseY <= M1Bottom) {
    MouseMove, (M3Left + M3Right)//2, (M3Top + M3Bottom)//2
  }
  else if (mouseX >= M3Left && mouseX <= M3Right && mouseY >= M3Top && mouseY <= M3Bottom) {
    MouseMove, (M2Left + M2Right)//2, (M2Top + M2Bottom)//2
  }
  MouseGetPos,,, HoverWindow
  WinActivate, ahk_id %HoverWindow%
Return

^XButton2:: ;mouse cursor to the center of secondary monitor
  MouseGetPos, mouseX, mouseY
  if (mouseX >= M2Left && mouseX <= M2Right && mouseY >= M2Top && mouseY <= M2Bottom) {
    MouseMove, (M3Left + M3Right)//2, (M3Top + M3Bottom)//2
  }
  else if (mouseX >= M1Left && mouseX <= M1Right && mouseY >= M1Top && mouseY <= M1Bottom) {
    MouseMove, (M2Left + M2Right)//2, (M2Top + M2Bottom)//2
  }
  else if (mouseX >= M3Left && mouseX <= M3Right && mouseY >= M3Top && mouseY <= M3Bottom) {
    MouseMove, (M1Left + M1Right)//2, (M1Top + M1Bottom)//2
  }
  MouseGetPos,,, HoverWindow
  WinActivate, ahk_id %HoverWindow%
Return