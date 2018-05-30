#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, 99:+ToolWindow

Gui, 99:Show, w1 x-1 h1 +NoActivate, IJKL to Arrows OFF

^8::Gui, 99:Show, w1 x-1 h1 +NoActivate, IJKL to Arrows ON

#IfWinExist, IJKL to Arrows ON

^8::Gui, 99:Show, w1 x-1 h1 +NoActivate, IJKL to Arrows OFF

i::Up

j::Left

k::Down

l::Right

#IfWinExist