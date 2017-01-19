#SingleInstance, Force

; My Hotkeys
;----------------------
;-------------------------------

^!w::Run C:\Program Files\LibreOffice 5\program\swriter
^!e::Run ‪C:\Program Files\Everything\Everything.exe
^!n::Run NotePad++
^!c::Run C:\Program Files\LibreOffice 5\program\scalc
^!g::Run Chrome
^!o::Run Outlook
^!v::Run C:\Program Files\Vim\vim74\gvim
^!t::Run C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE
^!b::Run C:\Program Files\Microsoft Visual Studio 12.0\Common7\IDE\WDExpress.exe
^!x::Run C:\Program Files\Oracle\VirtualBox\VirtualBox.exe
^!m::Run cmd.exe

^+v::   ; sends the most recent clipboard entry to google for search
{
Send, ^c
Sleep 50
Run, http://www.google.com/search?q=%clipboard%
Return
}


; My HotStrings
;----------------------
;---------------------------------

::heml::sgarrison05@sbcglobal.net
::weml::smgarrison@co.orange.tx.us
::waddr::213 Market St. Orange, TX 77630
::haddr::2879 Lydia St. Orange, TX 77632
::wphn::(409) 882-7885
::hphn::(409) 233-9293

^x::ExitApp