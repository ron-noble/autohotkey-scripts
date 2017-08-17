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

!I:: Send, {Up}
!K:: Send, {Down}
!J:: Send, {Left}
!L:: Send, {Right}

+!I:: Send, {Shift down}{Up}
+!K:: Send, {Shift down}{Down}
+!J:: Send, {Shift down}{Left}
+!L:: Send, {Shift down}{Right}

^!I:: Send, {Ctrl down}{Up}
^!K:: Send, {Ctrl down}{Down}
^!J:: Send, {Ctrl down}{Left}
^!L:: Send, {Ctrl down}{Right}

;##### CMDR Hotkeys

#Y::Send, goicon{enter}
#U::Send, goipg{enter}
#I::Send, gocommon{enter}
#O::Send, gotest{enter}
#P::Send, golocal{enter}
