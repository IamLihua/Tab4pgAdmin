;pgAdmin4自动补全脚本
;支持select delete where from drop between like having group
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive, ahk_exe pgAdmin4.exe
;select
::s::
SendInput, select
return

;delete
::d::
SendInput, delete
return

;where
::w::
SendInput, where
return

;from
::f::
SendInput, from
return

;drop
::d::
SendInput, drop
return

;between
::b::
SendInput, between
return

;like
::l::
SendInput, like
return

;having
::h::
SendInput, having
return

;group
::g::
SendInput, group
return