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


+^!I:: Send, {Ctrl down}{Shift down}{Up}
+^!K:: Send, {Ctrl down}{Shift down}{Down}
+^!J:: Send, {Ctrl down}{Shift down}{Left}
+^!L:: Send, {Ctrl down}{Shift down}{Right}

#Y::
	Send, goicon{enter}
Return

#U::
	Send, goipg{enter}
Return

#I::
	Send, gocommon{enter}
Return

#O::
	Send, gotest{enter}
Return

#P::
	Send, golocal{enter}
Return
