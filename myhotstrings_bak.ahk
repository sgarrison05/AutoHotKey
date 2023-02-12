#SingleInstance, Force

; My Hotkeys
;----------------------
;-------------------------------

^!w::Run C:\Program Files\LibreOffice 5\program\swriter
^!e::Run C:\Program Files\Everything\Everything.exe
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


::heml::home email
::weml::work email
::waddr::work address
::haddr::home address
::wphn::() 
::hphn::() 

^x::ExitApp
