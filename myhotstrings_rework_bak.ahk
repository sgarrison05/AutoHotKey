#SingleInstance, Force

; My Hotkeys
;--------------------------
;----------------------------------

; LibreOffice Writer - WinClose will close all LibreOffice programs running even if in background
	^!w::
	Run C:\Program Files\LibreOffice 5\program\swriter
	return
	
; Everything
	^!e::
	IfWinNotExist, ahk_class EVERYTHING ahk_exe Everything.exe
		{
			Run C:\Users\Shon Garrison\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Utilities\Everything\Search Everything.lnk
		}
	IfWinExist, ahk_class EVERYTHING ahk_exe Everything.exe
		{
			WinClose, ahk_class EVERYTHING ahk_exe Everything.exe
		}
	return

; Notepad++
	^!n::
	IfWinNotExist, ahk_class Notepad++ ahk_exe notepad++.exe
		{	
			Run NotePad++
		}
	IfWinExist, ahk_class Notepad++ ahk_exe notepad++.exe
		{
			WinClose, ahk_class Notepad++ ahk_exe notepad++.exe
		}			
	return

; LibreOffice Calc
	^!c::
	Run C:\Program Files\LibreOffice 5\program\scalc
	return

; Google Chrome
	^!g::
	IfWinNotExist, ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe
		{
		Run Chrome
		}	
	IfWinExist, ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe
		{
			WinClose, ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe
		}
	return

; MS Outlook - Email
	^!o::
	IfWinNotExist, ahk_class rctrl_renwnd32 ahk_exe OUTLOOK.EXE
		{
			Run Outlook
		}
	IfWinExist, ahk_class rctrl_renwnd32 ahk_exe OUTLOOK.EXE
		{
			WinClose, ahk_class rctrl_renwnd32 ahk_exe OUTLOOK.EXE
		}
	return

; Vim
	^!v::
	IfWinNotExist, ahk_class Vim ahk_exe gvim.exe
		{
			Run C:\Program Files\Vim\vim74\gvim
		}
	IfWinExist, ahk_class Vim ahk_exe gvim.exe
		{
			WinClose, ahk_class Vim ahk_exe gvim.exe
		}
	return

; MS OneNote 2016
	^!t::
	IfWinNotExist, ahk_class Framework::CFrame ahk_exe ONENOTE.EXE
		{
			Run C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE
		}
	IfWinExist, ahk_class Framework::CFrame ahk_exe ONENOTE.EXE
		{
			WinClose, ahk_class Framework::CFrame ahk_exe ONENOTE.EXE
		}
	return

; MS Visual Studio 2013 Express Ed. - WinClose not close, just opens another instance to running process.
	^!b::
	Run C:\Program Files\Microsoft Visual Studio 12.0\Common7\IDE\WDExpress.exe
	return

; VirtualBox
	^!x::
	IfWinNotExist, ahk_class QWidget ahk_exe VirtualBox.exe
		{
			Run C:\Program Files\Oracle\VirtualBox\VirtualBox.exe
		}	
	IfWinExist, ahk_class QWidget ahk_exe VirtualBox.exe
		{
			WinClose, ahk_class QWidget ahk_exe VirtualBox.exe
		}
			return

; Command Prompt - Not Admin
	^!m::
	IfWinNotExist, ahk_class ConsoleWindowClass ahk_exe cmd.exe
		{
			Run cmd.exe
		}	
	IfWinExist, ahk_class ConsoleWindowClass ahk_exe cmd.exe
		{
			WinClose, ahk_class ConsoleWindowClass ahk_exe cmd.exe
		}
	return
	
; Git Bash
	^!h::
	IfWinNotExist, ahk_class ConsoleWindowClass ahk_exe sh.exe
		{
			Run C:\Users\Shon Garrison\AppData\Roaming\Microsoft\Windows\Start Menu\Git Bash.lnk
		}	
	IfWinExist, ahk_class ConsoleWindowClass ahk_exe sh.exe
		{
			WinClose, ahk_class ConsoleWindowClass ahk_exe sh.exe
		}
	return

; Loads Google Calendar
^!a::
Run, https://calendar.google.com/
return

; Google Shortcut Search
; ---------------------------
; --------------------------------------
^+v::   ; sends the most recent clipboard entry to google for search
{
Send, ^c
Sleep 50
Run, http://www.google.com/search?q=%clipboard%
Return
}


; My HotStrings
;---------------------------
;----------------------------------

; :*:  ::{Backspace}{NumpadDot}{Space} ; gives a period and a space folling double tap of space bar

::heml::@homeemail
::weml::@workemail
::wnam::Juvenile Probation Dept.
::waddr::work address 
::haddr::home address
::wphn::() 
::hphn::()

^+x::ExitApp




