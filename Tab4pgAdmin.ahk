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
;SELECT
::S::
SendInput, SELECT
return

;delete
::d::
SendInput, delete
return
;DELETE
::D::
SendInput, DELETE
return

;where
::w::
SendInput, where
return
;WHERE
::W::
SendInput, WHERE
return

;from
::f::
SendInput, from
return
;FROM
::F::
SendInput, FROM
return

;drop
::d::
SendInput, drop
return
;DROP
::D::
SendInput, DROP
return

;between
::b::
SendInput, between
return
;BETWEEN
::B::
SendInput, BETWEEN
return

;like
::l::
SendInput, like
return
;LIKE
::L::
SendInput, LIKE
return

;having
::h::
SendInput, having
return
;HAVING
::H::
SendInput, HAVING
return

;group
::g::
SendInput, group
return
;GROUP
::G::
SendInput, GROUP
return
