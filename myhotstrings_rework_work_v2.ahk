#Requires AutoHotkey v2.0
#SingleInstance Force

;********************************************************************************
;  Keyboard Shortcuts Matrix
;(hash)					#		Windows Logo Key
;(Exclamation Mark)		!		Alt
;(caret) 				^		CTRL
;(Plus)					+		Shift
;********************************************************************************

; My Hotkeys
;================================================================================

#m::{
MyMenu := Menu()
MyMenu.Add("Adobe", (*) => Run("C:\Program Files\Adobe\Acrobat DC\Acrobat\Acrobat.exe"))
MyMenu.Add("MS Calculator", (*) => Run("calc.exe"))
MyMenu.Add("Publisher", (*) => Run("MSPUB.ExStyle"))
MyMenu.Add("Access", (*) => Run("MSACCESS.EXE"))
MyMenu.Add("PowerPoint", (*) => Run("POWERPNT.EXE"))
MyMenu.Add("Outlook", (*) => Run("C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"))
MyMenu.Add("Notepad", (*) => Run("notepad.exe"))
MyMenu.Add("Visual Studio 22 Community", (*) => Run("C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"))
MyMenu.Add("VS Code", (*) => Run("C:\Users\JuvProb1\AppData\Local\Programs\Microsoft VS Code\Code.exe"))
MyMenu.Add("Git Extensions", (*) => Run("C:\Program Files\GitExtensions\GitExtensions.exe"))
MyMenu.Add("Git BASH", (*) => Run("C:\Program Files\Git\git-bash.exe"))
MyMenu.Add("Meld", (*) => Run("C:\Program Files\Meld\Meld.exe"))
MyMenu.Add("Comptime Calculator", (*) => Run("C:\Users\JuvProb1\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Utilities\Comptime Calculator.appref-ms"))
MyMenu.Add("Child Age Calculator", (*) => Run("C:\Users\JuvProb1\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Utilities\Child Age Calculator.appref-ms"))
MyMenu.Show()
}

; Open Win Explorer with a specific path
^!e::Run('explorer.exe "D:\Dev"')
 
; Word
^!w:: { ;control + alt + w
	Run "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
}

; Excel
^!c:: { ;control + alt + c
	Run "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
}
	
; Brave Browser
^!g:: { ;control + alt + g
	Run "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
}	
	
; Vim
^!v:: { ;control + alt + v		
	Run "C:\Program Files\Vim\vim91\gvim.exe"
}	

; Obsidian
^!o:: { ;control + alt + n
	Run "C:\Users\JuvProb1\AppData\Local\Obsidian\Obsidian.exe"			
}	

; Command Prompt - Admin
^!t:: { ;control + alt + t
	Run "C:\Windows\System32\cmd.exe", "C:\", "runas"
}

; Command Prompt - Developement - Admin
^!d:: { ;control + alt + d
	Run "C:\Windows\System32\cmd.exe", "D:\Dev", "runas"
}
			
; Loads Google Calendar
^!l:: {  ;control + alt + l
	Run "https://calendar.google.com/"
}

; Loads JCMS
^!j:: {  ;control + alt + l
	Run "https://jcms.tjjd.texas.gov"
}

; Google Shortcut Search
;--------------------------------------------
^!s:: {  ;control + alt + s
	Clipboard:="" ; Clear the clipboard
	Send '^c' ; Copy the selected text to the clipboard	
	Clipwait 1 ; Wait for the clipboard to accept the text
	Run "https://www.google.com/search?q=" . A_Clipboard
}

; Insert Current Date
;----------------------------------------

::cdt:: {
	Send FormatTime(,"MM/dd/yyyy")
}

::cdl:: {
	Send FormatTime(, "MMMM dd, yyyy")
}

; Personal HotStrings
;--------------------------------------------

; :*:  ::{Backspace}{NumpadDot}{Space} ; gives a period and a space double tap of space bar

::heml::sgarrison05@sbcglobal.net
::weml::smgarrison@co.orange.tx.us
::wnam::Orange County Juvenile Probation Dept.
::mnam::Shon Garrison
::waddr::213 Market St. Orange, TX 77630
::haddr::2879 Lydia St. Orange, TX 77632
::wphn::(409) 882-7885
::hphn::(409) 233-9293

^+x::ExitApp




