#SingleInstance force

F1::
ClipSaved := ClipboardAll       ;save clipboard
clipboard := ""  ; empty clipboard
Send, ^c    ; copy the selected file
ClipWait, 1     ; wait for the clipboard to contain data
if (!ErrorLevel)    ; if NOT ErrorLevel clipwait found data on the clipboard
    {
    Gosub, gsearch
    Sleep, 100
    clipboard := ClipSaved       ; restore original clipboard
    ClipSaved := ""   ;  free the memory in case the clipboard was very large.
    return
    OnClipboardChange:
    if(A_EventInfo=1)
    text_selected := true
    ; ToolTip text is selected
    ; Sleep 1000
    ; ToolTip
    return
    }
else
text_selected := false
SendInput, {Ctrl down}{Left}
Sleep, 10
SendInput, {Shift down}{Right}
Sleep, 10
SendInput, {Ctrl up}{Shift up}
Sleep, 10
Gosub gsearch
return

gsearch:
browser="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
;Copy Clipboard to prevClipboard variable, clear Clipboard.
prevClipboard := ClipboardAll
Clipboard =
;Copy current selection, continue if no errors.
SendInput, ^c
ClipWait, 2
if !(ErrorLevel) {
;Convert Clipboard to text, auto-trim leading and trailing spaces and tabs.
Clipboard = %Clipboard%
;Clean Clipboard: change carriage returns to spaces, change >=1 consecutive spaces to +
Clipboard := RegExReplace(RegExReplace(Clipboard, "\r?\n"," "), "\s+","+")
;Open URLs, Google non-URLs. URLs contain . but do not contain + or .. or @
if Clipboard contains +,..,@
Run, %browser% http://www.google.com/search?q=%Clipboard%  
else if Clipboard not contains .
Run, %browser% http://www.google.com/search?q=%Clipboard%  
else
Run, %browser% %Clipboard%
}
;Restore Clipboard, clear prevClipboard variable.
Clipboard := prevClipboard
prevClipboard =
return