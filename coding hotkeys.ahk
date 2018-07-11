#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;##### General Hotkeys

#Y::
	Send, golocal{enter}
Return

#U::
	Send, goipf{enter}
Return

#I::
	Send, gostet{enter}
Return

#O::
	Send, goeba{enter}
Return

#P::
	Send, gostet{enter}
Return
