#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;##### General Hotkeys

!Left::
	Send, {Home}
Return

+!Left::
	Send, +{Home}
Return

!Right::
	Send, {End}
Return

+!Right::
	Send, +{End}
Return


;##### CMDR Hotkeys
^!Y::
	Send, goicon{enter}
Return

^!U::
	Send, goipg{enter}
Return

^!I::
	Send, gocommon{enter}
Return

^!O::
	Send, gotest{enter}
Return

^!P::
	Send, golocal{enter}
Return