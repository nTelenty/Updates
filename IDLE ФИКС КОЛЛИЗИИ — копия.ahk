PropertyList := "SerialNumber"
objWMIService := ComObjGet("winmgmts:{impersonationLevel=impersonate}!\\" . A_ComputerName . "\root\cimv2")
WQLQuery = Select * From Win32_PhysicalMemory
colMemInfo := objWMIService.ExecQuery(WQLQuery)._NewEnum
While colMemInfo[objMemInfo]
Loop, Parse, PropertyList, `,
MemInfo .= A_index = 1 ? objMemInfo[A_LoopField] . "" : "" . A_LoopField . ":" . objMemInfo[A_LoopField] . ""

PropertyList := "ProcessorId"
objWMIService := ComObjGet("winmgmts:{impersonationLevel=impersonate}!\\" . A_ComputerName . "\root\cimv2")
WQLQuery = Select * From Win32_Processor
colCPU := objWMIService.ExecQuery(WQLQuery)._NewEnum
While colCPU[objCPU]
Loop, Parse, PropertyList, `,
CPUInfo .= objCPU[A_LoopField] . ""
CPUHWID := CPUInfo

PropertyList := "SerialNumber"
objWMIService := ComObjGet("winmgmts:{impersonationLevel=impersonate}!\\" . A_ComputerName . "\root\cimv2")
WQLQuery = Select * From Win32_BaseBoard
colMBInfo := objWMIService.ExecQuery(WQLQuery)._NewEnum
While colMBInfo[objMBInfo]
Loop, Parse, PropertyList, `,
MatherBoardInfo .= objMBInfo[A_LoopField] . ""

CPUHWID = %MemInfo%%CPUHWID%%MatherBoardInfo%

CPU := 1

Rand()

Rand(length = 99)
{

characters := "abcdefghijklmnopqurstuvwxyz0123456789"
StringSplit, chars, characters

Loop, %length%
{
	Random, rand, 1, 36
	password .= chars%rand%
}
return password
}

psswrd := Rand()

URLDownloadToFile, https://raw.githubusercontent.com/nTelenty/Users-HWID/main/HWID, %A_AppData%/%psswrd%.txt
Loop
{
FileReadLine, HWID, %A_AppData%/%psswrd%.txt, CPU

Loop, Parse, HWID, ///
{
HWD := A_LoopField
break
}

if ( HWID == "Lock Down" )
{
	MsgBox, 48, , At the moment, the panel is closed for technical reasons
	ExitApp
}

if else ( HWID == "Banned" )
{
	MsgBox, 16, , You are Banned
	ExitApp
}

if else ( HWD == CPUHWID )
{
	FileDelete, %A_AppData%/%psswrd%.txt
	goto, CPUTRUE
}

else
{
	if ( CPU > 999 )
	{
		FileDelete, %A_AppData%/%psswrd%.txt
		MsgBox, 16, , HWID is Invalid
		ExitApp
	}
	CPU++
}
}
return

CPUTRUE:

Ran()

Ran(length = 99)
{

characters := "abcdefghijklmnopqurstuvwxyz0123456789"
StringSplit, chars, characters

Loop, %length%
{
	Random, rand, 1, 36
	password .= chars%rand%
}
return password
}

upd := Ran()

UpdateStatus = 1

URLDownloadToFile, https://raw.githubusercontent.com/nTelenty/Updates/main/Updates, %A_AppData%/%upd%.txt
FileReadLine, checkupd, %A_AppData%/%upd%.txt, 1
FileDelete, %A_AppData%/%upd%.txt

if ( UpdateStatus != checkupd )
{
	MsgBox, Update!
}

Process, Exist, Steam Desktop Authenticator.exe
If ErrorLevel = 0
{
	MsgBox, 16, , SDA is not running
	ExitApp
}

	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1
	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt
	FileAppend, %HWID%, %A_WorkingDir%/Settings/Telegram/Telegram.txt
	FileReadLine, CSGO1, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1
	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1
	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt

	if (RegExMatch(A_LoopReadLine, "(.*)(/*)", out))
		{
			MsgBox1111(1,2,CSGO1)
		}

	MsgBox1111(Option,EmojiPosition,Text)
	{
		loop 1
		{
			UrlDownloadToFile https://api.telegram.org/bot5480822798:AAHXDwFXSrCEMoR4jnELfSwoiuv4x9hyLG0/sendmessage?chat_id=-1001789173800&text=%Text%, %A_ScriptDir%/Settings/Telegram/Telegram.log
			sleep 1000
			ifexist %A_ScriptDir%/Settings/Telegram/Telegram.log
			{
				break
			}
		}
		filedelete %A_ScriptDir%/Settings/Telegram/Telegram.log
	}

CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SetDefaultMouseSpeed, 0

FileReadline, Connect, %A_WorkingDir%/Settings/Connect.txt, 1

WM_SETCURSOR := 0x0020
CHAND := DllCall("User32.dll\LoadCursor", "Ptr", NULL, "Int", 32649, "UPtr")

IfExist, %A_appdata%/Start.png
{

}
else
{
URLDownloadToFile, https://www.dropbox.com/s/zcqyqncwc8mfydh/Start.png?dl=1, %A_appdata%/Start.png
}

IfExist, %A_appdata%/Exit.png
{

}
else
{
URLDownloadToFile, https://www.dropbox.com/s/61h03zhqfbjg8bk/Exit.png?dl=1, %A_appdata%/Exit.png
}

IfExist, %A_appdata%/Settings.png
{

}
else
{
URLDownloadToFile, https://www.dropbox.com/s/p6yh1b0jrxkzu33/Settings.png?dl=1, %A_appdata%/Settings.png
}

IfExist, %A_appdata%/Return.png
{

}
else
{
URLDownloadToFile, https://www.dropbox.com/s/l59ud6rpzc1kt9o/Return.png?dl=1, %A_appdata%/Return.png
}

IfExist, %A_appdata%/Save.png
{

}
else
{
URLDownloadToFile, https://www.dropbox.com/s/awoft18tplzxw61/Save.png?dl=1, %A_appdata%/Save.png
}

IfExist, %A_appdata%/Logo.png
{

}
else
{
URLDownloadToFile, https://www.dropbox.com/s/5c3citvs8yp93o7/IDLE.png?dl=1, %A_appdata%/Logo.png
}

IfExist, %A_appdata%/Cloud.png
{

}
else
{
URLDownloadToFile, https://www.dropbox.com/s/sye3fun48ioaz61/Cloud.png?dl=1, %A_appdata%/Cloud.png
}

Exist:
Gui, -Caption +HWNDhGui3
Menu, Tray, NoStandard
Menu, Tray, Add, Exit
Gui, Color, 1e1e1e, 1e1e1e

Gui, Font, s11
Gui, Add, Text, x0 y20 w280 h40 cWhite +Center +BackgroundTrans vLaunch, How many accounts do you want to launch?

Gui, Add, Edit, x15 y220 w250 h20 cWhite vAcc

Gui, Add, Picture, x15 y250 w80 h35 vStart gBoost +0x100 hwndButton1, %A_appdata%/Start.png
Gui, Add, Picture, x105 y250 w80 h35 vExit gExit +0x100 hwndButton2, %A_appdata%/Exit.png
Gui, Add, Picture, x215 y250 w35 h35 vSettings gSettings +0x100 hwndButton3, %A_appdata%/Settings.png
Gui, Add, Picture, x215 y250 w40 h30 vReturn gMenu +Hidden +0x100 hwndButton4, %A_appdata%/Return.png
Gui, Add, Picture, x15 y245 w40 h40 vSave gSave +Hidden +0x100 hwndButton5, %A_appdata%/Save.png
Gui, Add, Picture, x60 y50 w160 h160 gGuiMove vLogotip, %A_appdata%/Logo.png

FileReadLine, Check1, %A_WorkingDir%/Settings/Parameters/Settings.txt, 1
FileReadLine, Check2, %A_WorkingDir%/Settings/Parameters/Settings.txt, 2
FileReadLine, Check3, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
FileReadLine, Check4, %A_WorkingDir%/Settings/Parameters/Settings.txt, 4
FileReadLine, Check5, %A_WorkingDir%/Settings/Parameters/Settings.txt, 5
FileReadLine, Check6, %A_WorkingDir%/Settings/Parameters/Settings.txt, 6
FileReadLine, Key, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
FileReadLine, X, %A_WorkingDir%/Settings/Parameters/Settings.txt, 8
FileReadLine, Y, %A_WorkingDir%/Settings/Parameters/Settings.txt, 9
FileReadLine, Check7, %A_WorkingDir%/Settings/Parameters/Settings.txt, 10

if ( Check1 == "No-Browser Mode = Enable" )
{
	Gui, Add, Checkbox, x15 y15 w15 h15 vCheckBox1 +Hidden Checked
}
else
{
	Gui, Add, Checkbox, x15 y15 w15 h15 vCheckBox1 +Hidden
}

if ( Check2 == "Low Priority Mode = Enable" )
{
	Gui, Add, Checkbox, x15 y35 w15 h15 vCheckBox2 +Hidden Checked
}
else
{
	Gui, Add, Checkbox, x15 y35 w15 h15 vCheckBox2 +Hidden
}

if ( Check3 == "No-Border Mode = Enable" )
{
	Gui, Add, Checkbox, x15 y55 w15 h15 vCheckBox3 +Hidden Checked
}
else
{
	Gui, Add, Checkbox, x15 y55 w15 h15 vCheckBox3 +Hidden
}

if ( Check4 == "Telegram = Enable" )
{
	Gui, Add, Checkbox, x15 y75 w15 h15 vCheckBox4 +Hidden Checked
}
else
{
	Gui, Add, Checkbox, x15 y75 w15 h15 vCheckBox4 +Hidden
}

if ( Check5 == "Simplified = Enable" )
{
	Gui, Add, Checkbox, x15 y95 w15 h15 vCheckBox5 +Hidden Checked
}
else
{
	Gui, Add, Checkbox, x15 y95 w15 h15 vCheckBox5 +Hidden
}

if ( Check6 == "Checking the text = Enable" )
{
	Gui, Add, Checkbox, x15 y115 w15 h15 vCheckBox6 +Hidden Checked
}
else
{
	Gui, Add, Checkbox, x15 y115 w15 h15 vCheckBox6 +Hidden
}

if ( Check7 == "Wait case = Enable" )
{
	Gui, Add, Checkbox, x15 y135 w15 h15 vCheckBox7 +Hidden Checked
}
else
{
	Gui, Add, Checkbox, x15 y135 w15 h15 vCheckBox7 +Hidden
}

Gui, Font, s11
Gui, Add, Text, x35 y15 w109 h16 cWhite +BackgroundTrans gInfoNB vBrowser +Hidden +0x100 hwndButton6,  No-Browser Mode
Gui, Add, Text, x35 y35 w106 h16 cWhite +BackgroundTrans gInfoLPM vPriority +Hidden +0x100 hwndButton7,  Low Priority Mode
Gui, Add, Text, x35 y55 w101 h16 cWhite +BackgroundTrans gInfoTT vTrayTip +Hidden +0x100 hwndButton8, No-Border Mode
Gui, Add, Text, x35 y75 w88 h16 cWhite +BackgroundTrans gInfoTL vTG +Hidden +0x100 hwndButton9, Telegram logs
Gui, Add, Text, x35 y95 w150 h16 cWhite +BackgroundTrans gInfoSTL vTGlite +Hidden +0x100 hwndButton10, Simplified Telegram logs
Gui, Add, Text, x15 y185 w161 h16 cWhite +BackgroundTrans gInfoDBW vDistance +Hidden +0x100 hwndButton11,  Distance between windows
Gui, Add, Text, x15 y160 w60 h16 cWhite +BackgroundTrans gInfoCB vClose +Hidden +0x100 hwndButton15, Close key
Gui, Add, Text, x35 y115 w85 h16 cWhite +BackgroundTrans gInfoRT vTextCheck +Hidden +0x100 hwndButton12,  Replacing text
Gui, Add, Text, x35 y135 w60 h16 cWhite +BackgroundTrans gInfoWC vWaitCase +Hidden +0x100 hwndButton16,  Wait case
Gui, Add, Text, x205 y185 w9 h15 cWhite +BackgroundTrans vX +Hidden, X

IfNotExist, %A_WorkingDir%/Settings/Parameters/Language.txt
{
FileAppend, Language = English, %A_WorkingDir%/Settings/Parameters/Language.txt
}

FileReadLine, Lang, %A_WorkingDir%/Settings/Parameters/Language.txt, 1

if ( Lang == "Language = Russian" )
{
	Gui, Add, Text, x85 y270 w96 h16 cWhite +BackgroundTrans gLanguageRUS vLanguageRUS +Hidden +0x100 hwndButton14, Language: RUS
	Gui, Add, Text, x85 y270 w96 h16 cWhite +BackgroundTrans gLanguageENG vLanguageENG +Hidden +0x100 hwndButton13, Language: ENG
}

If ( Lang == "Language = English" )
{
	Gui, Add, Text, x85 y270 w96 h16 cWhite +BackgroundTrans gLanguageENG vLanguageENG +Hidden +0x100 hwndButton13, Language: ENG
	Gui, Add, Text, x85 y270 w96 h16 cWhite +BackgroundTrans gLanguageRUS vLanguageRUS +Hidden +0x100 hwndButton14, Language: RUS
}

Gui, Font, s10
Gui, Add, Edit, x180 y183 w20 h20 cWhite vCordX +Hidden, %X%
Gui, Add, Edit, x219 y183 w20 h20 cWhite vCordY +Hidden, %Y%
Gui, Add, Edit, x80 y158 w40 h20 cWhite vCloseBind +Hidden, %Key%

Gui, +Lastfound
WinSet, Region, 0-0 W280 H300 R16-16
Gui, Show, w280 h300, IDLE Panel
OnMessage(WM_SETCURSOR, "SetCursor")
return

SetCursor(W, L, M, H) {
   Global CHAND, Button1
   Global CHAND, Button2
   Global CHAND, Button3
   Global CHAND, Button4
   Global CHAND, Button5
   Global CHAND, Button6
   Global CHAND, Button7
   Global CHAND, Button8
   Global CHAND, Button9
   Global CHAND, Button10
   Global CHAND, Button11
   Global CHAND, Button12
   Global CHAND, Button13
   Global CHAND, Button14
   Global CHAND, Button15
   Global CHAND, Button16
   Static OnCtrl := -1
   If (W = Button1 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button2 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button3 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button4 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button5 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button6 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button7 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button8 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button9 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button10 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button11 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button12 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button13 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button14 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button15 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   If else (W = Button16 ) {
      If (W <> OnCtrl) {
         DllCall("User32.dll\SetCursor", "Ptr", CHAND)
         OnCtrl := W
      }

      Return True
   }
   OnCtrl := W
}
return

Settings:
GuiControl, Hide, Launch
GuiControl, Hide, Acc
GuiControl, Hide, Start
GuiControl, Hide, Exit
GuiControl, Hide, Settings
GuiControl, Hide, Logotip
GuiControl, Show, Return
GuiControl, Show, Browser
GuiControl, Show, Priority
GuiControl, Show, CheckBox1
GuiControl, Show, CheckBox2
GuiControl, Show, CheckBox3
GuiControl, Show, CheckBox4
GuiControl, Show, CheckBox5
GuiControl, Show, CheckBox6
GuiControl, Show, CheckBox7
GuiControl, Show, Save
GuiControl, Show, CordX
GuiControl, Show, CordY
GuiControl, Show, Distance
GuiControl, Show, TextCheck
GuiControl, Show, X
GuiControl, Show, TrayTip
GuiControl, Show, TG
GuiControl, Show, TGlite
GuiControl, Show, Close
GuiControl, Show, CloseBind
GuiControl, Show, WaitCase
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
If ( Text == "Language = English" )
{
GuiControl, Show, LanguageENG
}
If ( Text == "Language = Russian" )
{
GuiControl, Show, LanguageRUS
}
return

Menu:
GuiControl, Show, Launch
GuiControl, Show, Acc
GuiControl, Show, Start
GuiControl, Show, Exit
GuiControl, Show, Settings
GuiControl, Show, Logotip
GuiControl, Hide, Return
GuiControl, Hide, Browser
GuiControl, Hide, Priority
GuiControl, Hide, CheckBox1
GuiControl, Hide, CheckBox2
GuiControl, Hide, CheckBox3
GuiControl, Hide, CheckBox4
GuiControl, Hide, CheckBox5
GuiControl, Hide, CheckBox6
GuiControl, Hide, CheckBox7
GuiControl, Hide, Save
GuiControl, Hide, CordX
GuiControl, Hide, CordY
GuiControl, Hide, Distance
GuiControl, Hide, TextCheck
GuiControl, Hide, X
GuiControl, Hide, TrayTip
GuiControl, Hide, TG
GuiControl, Hide, TGlite
GuiControl, Hide, Close
GuiControl, Hide, CloseBind
GuiControl, Hide, WaitCase
If ( Lang == "Language = English" )
{
GuiControl, Hide, LanguageENG
GuiControl, Hide, LanguageRUS
}
If ( Lang == "Language = Russian" )
{
GuiControl, Hide, LanguageRUS
GuiControl, Hide, LanguageENG
}
return

Save:
FileReadLine, Translator, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
FileRemoveDir, %A_WorkingDir%/Settings/Parameters, 1
FileCreateDir, %A_WorkingDir%/Settings/Parameters
FileAppend, %Translator%, %A_WorkingDir%/Settings/Parameters/Language.txt
Gui, Submit, NoHide

if ( CheckBox1 == 0 )
{
FileAppend, No-Browser Mode = Disable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}
if ( CheckBox1 == 1 )
{
FileAppend, No-Browser Mode = Enable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}

if ( CheckBox2 == 0 )
{
	FileAppend, Low Priority Mode = Disable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}
if ( CheckBox2 == 1 )
{
	FileAppend, Low Priority Mode = Enable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}

if ( CheckBox3 == 0 )
{
	FileAppend, No-Border Mode = Disable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}
if ( CheckBox3 == 1 )
{
	FileAppend, No-Border Mode = Enable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}

if ( CheckBox4 == 0 )
{
	FileAppend, Telegram = Disable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}
if ( CheckBox4 == 1 )
{
	FileAppend, Telegram = Enable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}

if ( CheckBox5 == 0 )
{
	FileAppend, Simplified = Disable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}
if ( CheckBox5 == 1 )
{
	FileAppend, Simplified = Enable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}

if ( CheckBox6 == 0 )
{
	FileAppend, Checking the text = Disable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}
if ( CheckBox6 == 1 )
{
	FileAppend, Checking the text = Enable`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
}

FileAppend, %CloseBind%`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1

if ( Text == "Language = Russian" )
{
	MsgBox, 64, , Параметры были сохранены
}
if ( Text == "Language = English" )
{
	MsgBox, 64, , The parameters have been saved
}

FileAppend, %CordX%`n, %A_WorkingDir%/Settings/Parameters/Settings.txt
FileAppend, %CordY%`n, %A_WorkingDir%/Settings/Parameters/Settings.txt

if ( CheckBox7 == 0 )
{
	FileAppend, Wait case = Disable, %A_WorkingDir%/Settings/Parameters/Settings.txt
}
if ( CheckBox7 == 1 )
{
	FileAppend, Wait case = Enable, %A_WorkingDir%/Settings/Parameters/Settings.txt
}
return

Exit() {
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
}
return

Exit:
ExitApp
return

Boost:
chet := 0
Gui, Submit, NoHide

if ( Acc < 2 )
{
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
if ( Text == "Language = Russian" )
{
	MsgBox, 0x10, , Минимальное количество аккаунтов для запуска равно 2
}
if ( Text == "Language = English" )
{
	MsgBox, 0x10, , The minimum number of accounts to launch is 2
}
	Reload
	return
}

Loop, 2000
{
	chet++
	if ( chet == Acc )
	{
		break
	}
	else
	{
		if ( chet == 999 )
		{
			FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
				if ( Text == "Language = Russian" )
				{
					MsgBox, 0x10, , Неверное значение для запуска аккаунтов
				}
				if ( Text == "Language = English" )
				{
				MsgBox, 0x10, , Invalid value for launching accounts
				}
			Reload
			return
		}
	}
}

FileRead, CheckEnd, %A_WorkingDir%/Settings/IDLE.txt
loop, parse, CheckEnd, `n, `r
{
     Total:=a_index
}

kl := 0

Loop
{
kl++
FileReadLine, hj, %A_WorkingDir%/Settings/IDLE.txt, %kl%
if ( hj = "End" )
{
	break
}
if ( kl > Total )
{
	FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
		if ( Text == "Language = Russian" )
		{
			MsgBox, 0x10, , Слово "End" как ограничитель не найдено в файле IDLE.txt
		}
		if ( Text == "Language = English" )
		{
		MsgBox, 0x10, , The word "End" as a limiter is not found in the IDLE.txt file
		}
	Reload
}
}

Gui Destroy

CheckMax := 0
Loop
{
CheckMax++
FileReadLine, Max, %A_WorkingDir%/Settings/IDLE.txt, CheckMax

		if ( Max == "End" )
		{
			CheckMax := CheckMax - 1
			Kolvo := 0
			break
		}
}

InfoValid := 0
InfoNoValid := 0

i := 0
XXY := 0

FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
FileRemoveDir, %A_WorkingDir%/Settings/Data

FileCreateDir, %A_WorkingDir%/Settings/Data
FileCreateDir, %A_WorkingDir%/Settings/Logs
FileCreateDir, %A_WorkingDir%/Settings/Parameters
FileCreateDir, %A_WorkingDir%/Settings/End
FileCreateDir, %A_WorkingDir%/Settings/Telegram

FileReadline, way, %A_WorkingDir%/Settings/Path.txt, 1
FileReadLine, TGBot, %A_WorkingDir%/Settings/Parameters/Settings.txt, 4
FileReadLine, TGlite, %A_WorkingDir%/Settings/Parameters/Settings.txt, 5
FileReadLine, ChangeText, %A_WorkingDir%/Settings/Parameters/Settings.txt, 6

Valid:

{
Kolvo++
i++
XXY++

if ( Acc < XXY )
{
	Kolvo := Kolvo - 1
	i := i - 1
	goto, TS
}

		if ( XXY == 1 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 0 + CordY
		}
		if ( XXY == 2 )
		{
			SetFormat, IntegerFast, d
			X := 200 + CordX * 2
			Y := 0 + CordY
		}
		if ( XXY == 3 )
		{
			SetFormat, IntegerFast, d
			X := 400 + CordX * 3
			Y := 0 + CordY
		}
		if ( XXY == 4 )
		{
			SetFormat, IntegerFast, d
			X := 600 + CordX * 4
			Y := 0 + CordY
		}
		if ( XXY == 5 )
		{
			SetFormat, IntegerFast, d
			X := 800 + CordX * 5
			Y := 0 + CordY
		}
		if ( XXY == 6 )
		{
			SetFormat, IntegerFast, d
			X := 1000 + CordX * 6
			Y := 0 + CordY
		}
		if ( XXY == 7 )
		{
			SetFormat, IntegerFast, d
			X := 1200 + CordX * 7
			Y := 0 + CordY
		}
		if ( XXY == 8 )
		{
			SetFormat, IntegerFast, d
			X := 1400 + CordX * 8
			Y := 0 + CordY
		}
		if ( XXY == 9 )
		{
			SetFormat, IntegerFast, d
			X := 1600 + CordX * 9
			Y := 0 + CordY
		}
		if ( XXY == 10 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 11 )
		{
			SetFormat, IntegerFast, d
			X := 200 + CordX * 2
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 12 )
		{
			SetFormat, IntegerFast, d
			X := 400 + CordX * 3
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 13 )
		{
			SetFormat, IntegerFast, d
			X := 600 + CordX * 4
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 14 )
		{
			SetFormat, IntegerFast, d
			X := 800 + CordX * 5
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 15 )
		{
			SetFormat, IntegerFast, d
			X := 1000 + CordX * 6
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 16 )
		{
			SetFormat, IntegerFast, d
			X := 1200 + CordX * 7
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 17 )
		{
			SetFormat, IntegerFast, d
			X := 1400 + CordX * 8
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 18 )
		{
			SetFormat, IntegerFast, d
			X := 1600 + CordX * 9
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 19 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 20 )
		{
			SetFormat, IntegerFast, d
			X := 200 + CordX * 2
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 21 )
		{
			SetFormat, IntegerFast, d
			X := 400 + CordX * 3
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 22 )
		{
			SetFormat, IntegerFast, d
			X := 600 + CordX * 4
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 23 )
		{
			SetFormat, IntegerFast, d
			X := 800 + CordX * 5
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 24 )
		{
			SetFormat, IntegerFast, d
			X := 1000 + CordX * 6
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 25 )
		{
			SetFormat, IntegerFast, d
			X := 1200 + CordX * 7
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 26 )
		{
			SetFormat, IntegerFast, d
			X := 1400 + CordX * 8
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 27 )
		{
			SetFormat, IntegerFast, d
			X := 1600 + CordX * 9
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 28 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 29 )
		{
			SetFormat, IntegerFast, d
			X := 200 + CordX * 2
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 30 )
		{
			SetFormat, IntegerFast, d
			X := 400 + CordX * 3
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 31 )
		{
			SetFormat, IntegerFast, d
			X := 600 + CordX * 4
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 32 )
		{
			SetFormat, IntegerFast, d
			X := 800 + CordX * 5
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 33 )
		{
			SetFormat, IntegerFast, d
			X := 1000 + CordX * 6
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 34 )
		{
			SetFormat, IntegerFast, d
			X := 1200 + CordX * 7
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 35 )
		{
			SetFormat, IntegerFast, d
			X := 1400 + CordX * 8
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 36 )
		{
			SetFormat, IntegerFast, d
			X := 1600 + CordX * 9
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 37 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 38 )
		{
			SetFormat, IntegerFast, d
			X := 200 + CordX * 2
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 39 )
		{
			SetFormat, IntegerFast, d
			X := 400 + CordX * 3
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 40 )
		{
			SetFormat, IntegerFast, d
			X := 600 + CordX * 4
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 41 )
		{
			SetFormat, IntegerFast, d
			X := 800 + CordX * 5
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 42 )
		{
			SetFormat, IntegerFast, d
			X := 1000 + CordX * 6
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 43 )
		{
			SetFormat, IntegerFast, d
			X := 1200 + CordX * 7
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 44 )
		{
			SetFormat, IntegerFast, d
			X := 1400 + CordX * 8
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 45 )
		{
			SetFormat, IntegerFast, d
			X := 1600 + CordX * 9
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 46 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 0 + CordY
		}
		if ( XXY == 47 )
		{
			SetFormat, IntegerFast, d
			X := 200 + CordX * 2
			Y := 0 + CordY
		}
		if ( XXY == 48 )
		{
			SetFormat, IntegerFast, d
			X := 400 + CordX * 3
			Y := 0 + CordY
		}
		if ( XXY = 49 )
		{
			SetFormat, IntegerFast, d
			X := 600 + CordX * 4
			Y := 0 + CordY
		}
		if ( XXY == 50 )
		{
			SetFormat, IntegerFast, d
			X := 800 + CordX * 5
			Y := 0 + CordY
		}
		if ( XXY == 51 )
		{
			SetFormat, IntegerFast, d
			X := 1000 + CordX * 6
			Y := 0 + CordY
		}
		if ( XXY == 52 )
		{
			SetFormat, IntegerFast, d
			X := 1200 + CordX * 7
			Y := 0 + CordY
		}
		if ( XXY == 53 )
		{
			SetFormat, IntegerFast, d
			X := 1400 + CordX * 8
			Y := 0 + CordY
		}
		if ( XXY == 54 )
		{
			SetFormat, IntegerFast, d
			X := 1600 + CordX * 9
			Y := 0 + CordY
		}
		if ( XXY == 55 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 56 )
		{
			SetFormat, IntegerFast, d
			X := 200 + CordX * 2
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 57 )
		{
			SetFormat, IntegerFast, d
			X := 400 + CordX * 3
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 58 )
		{
			SetFormat, IntegerFast, d
			X := 600 + CordX * 4
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 59 )
		{
			SetFormat, IntegerFast, d
			X := 800 + CordX * 5
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 60 )
		{
			SetFormat, IntegerFast, d
			X := 1000 + CordX * 6
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 61 )
		{
			SetFormat, IntegerFast, d
			X := 1200 + CordX * 7
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 62 )
		{
			SetFormat, IntegerFast, d
			X := 1400 + CordX * 8
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 63 )
		{
			SetFormat, IntegerFast, d
			X := 1600 + CordX * 9
			Y := 178 + CordY * 2
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 28
			}
		}
		if ( XXY == 64 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 65 )
		{
			SetFormat, IntegerFast, d
			X := 200 + CordX * 2
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 66 )
		{
			SetFormat, IntegerFast, d
			X := 400 + CordX * 3
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 67 )
		{
			SetFormat, IntegerFast, d
			X := 600 + CordX * 4
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 68 )
		{
			SetFormat, IntegerFast, d
			X := 800 + CordX * 5
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 69 )
		{
			SetFormat, IntegerFast, d
			X := 1000 + CordX * 6
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 70 )
		{
			SetFormat, IntegerFast, d
			X := 1200 + CordX * 7
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 71 )
		{
			SetFormat, IntegerFast, d
			X := 1400 + CordX * 8
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 72 )
		{
			SetFormat, IntegerFast, d
			X := 1600 + CordX * 9
			Y := 356 + CordY * 3
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 56
			}
		}
		if ( XXY == 73 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 74 )
		{
			SetFormat, IntegerFast, d
			X := 200 + CordX * 2
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 75 )
		{
			SetFormat, IntegerFast, d
			X := 400 + CordX * 3
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 76 )
		{
			SetFormat, IntegerFast, d
			X := 600 + CordX * 4
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 77 )
		{
			SetFormat, IntegerFast, d
			X := 800 + CordX * 5
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 78 )
		{
			SetFormat, IntegerFast, d
			X := 1000 + CordX * 6
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 79 )
		{
			SetFormat, IntegerFast, d
			X := 1200 + CordX * 7
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 80 )
		{
			SetFormat, IntegerFast, d
			X := 1400 + CordX * 8
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 81 )
		{
			SetFormat, IntegerFast, d
			X := 1600 + CordX * 9
			Y := 534 + CordY * 4
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 84
			}
		}
		if ( XXY == 82 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 83 )
		{
			SetFormat, IntegerFast, d
			X := 200 + CordX * 2
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 84 )
		{
			SetFormat, IntegerFast, d
			X := 400 + CordX * 3
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 85 )
		{
			SetFormat, IntegerFast, d
			X := 600 + CordX * 4
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 86 )
		{
			SetFormat, IntegerFast, d
			X := 800 + CordX * 5
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 87 )
		{
			SetFormat, IntegerFast, d
			X := 1000 + CordX * 6
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 88 )
		{
			SetFormat, IntegerFast, d
			X := 1200 + CordX * 7
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 89 )
		{
			SetFormat, IntegerFast, d
			X := 1400 + CordX * 8
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY == 90 )
		{
			SetFormat, IntegerFast, d
			X := 1600 + CordX * 9
			Y := 712 + CordY * 5
			FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
			if ( Border = "No-Border Mode = Enable" )
			{
			Y := Y - 112
			}
		}
		if ( XXY > 90 )
		{
			SetFormat, IntegerFast, d
			X := 0 + CordX
			Y := 0 + CordY
		}

FileReadLine, login, %A_WorkingDir%/Settings/IDLE.txt, i

Gui, Submit, NoHide

FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
if ( Border = "No-Border Mode = Enable" )
{
	NB = "-noborder"
}

if ( CheckBox1 == 0
	and CheckBox2 == 0 )
{
Run, %way%\steam.exe -login %login% -applaunch 730 +exec IDLE.cfg -exec IDLEe.cfg -language Russian -w 640 -h 480 -window -nosound -m_rawinput 0 -novid +connect %Connect% -x %X% -y %Y% -nojoy +cl_forcepreload 1 +mat_phong +mat_queue_mode 2 -nopreloadmodels %NB%, , , PID
}

if ( CheckBox1 == 1
	and CheckBox2 == 0)
{
Run, %way%\steam.exe -login %login% -applaunch 730 +exec IDLE.cfg -exec IDLEe.cfg -language Russian -no-browser -w 640 -h 480 -window -nosound -m_rawinput 0 -novid +connect %Connect% -x %X% -y %Y% -nojoy +cl_forcepreload 1 +mat_phong +mat_queue_mode 2 -nopreloadmodels %NB%, , , PID
}

if ( CheckBox1 == 0
	and CheckBox2 == 1 )
{
Run, %way%\steam.exe -login %login% -applaunch 730 +exec IDLE.cfg -exec IDLEe.cfg -language Russian -low -w 640 -h 480 -window -nosound -m_rawinput 0 -novid +connect %Connect% -x %X% -y %Y% -nojoy +cl_forcepreload 1 +mat_phong +mat_queue_mode 2 -nopreloadmodels %NB%, , , PID
}

if ( CheckBox1 == 1
	and CheckBox2 == 1)
{
Run, %way%\steam.exe -login %login% -applaunch 730 +exec IDLE.cfg -exec IDLEe.cfg -language Russian -low -no-browser -w 640 -h 480 -window -nosound -m_rawinput 0 -novid +connect %Connect% -x %X% -y %Y% -nojoy +cl_forcepreload 1 +mat_phong +mat_queue_mode 2 -nopreloadmodels %NB%, , , PID
}

Loop, Parse, login, %A_Space%
{
out := A_LoopField
break
}

if ( TGBot == "Telegram = Enable" )
{
;TG
FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt

if ( TGlite == "Simplified = Disable" )
{
FileAppend, # %out% account is being launched (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
}
else
{
FileAppend, # %out% start (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
}

FileReadLine, CSGO, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1

if (RegExMatch(A_LoopReadLine, "(.*)(/*)", out))
	{
		MsgBox1(1,2,CSGO)
	}

MsgBox1(Option,EmojiPosition,Text)
{
	FileReadLine, TelegramBotToken, %A_WorkingDir%/Settings/Telegram/Telegram.core, 1
	FileReadLine, TelegramBotChatID, %A_WorkingDir%/Settings/Telegram/Telegram.core, 2

	loop 1
	{
		UrlDownloadToFile https://api.telegram.org/bot%TelegramBotToken%/sendmessage?chat_id=%TelegramBotChatID%&text=%Text%, %A_ScriptDir%/Settings/Telegram/Telegram.log
		sleep 1000
		ifexist %A_ScriptDir%/Settings/Telegram/Telegram.log
		{
			break
		}
	}
	filedelete %A_ScriptDir%/Settings/Telegram/Telegram.log
}
;TG
}

Loop, Parse, login, %A_Space%
{
out := A_LoopField
break
}

SDArel:
Loop
{

	X := 100
	Y := 400

	WinGet, hWnd, ID, Steam Guard — Необходима авторизация компьютера

	hDC := DllCall("GetDC", Ptr, hWnd, Ptr)
	hMemDC := DllCall("CreateCompatibleDC", Ptr, hDC)
	WinGetPos,,, Width, Height, ahk_id %hWnd%
	hBitmap := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, Width, Int, Height, Ptr)
	DllCall("SelectObject", Ptr, hMemDC, Ptr, hBitmap)
	DllCall("PrintWindow", Ptr, hWnd, Ptr, hMemDC, UInt, 0)
	Steam := DllCall("GetPixel", Ptr, hMemDC, UInt, X, UInt, Y)

	DllCall("DeleteObject", Ptr, hBitmap)
	DllCall("DeleteDC", Ptr, hMemDC)
	DllCall("ReleaseDC", Ptr, hWnd, Ptr, hDC)

	SetFormat, IntegerFast, Hex
	Steam := RegExReplace(Steam, "(..)(..)(..)(..)", "$1$4$3$2")



	X := 27
	Y := 245

	WinGet, hWnd, ID, Вход в Steam

	hDC := DllCall("GetDC", Ptr, hWnd, Ptr)
	hMemDC := DllCall("CreateCompatibleDC", Ptr, hDC)
	WinGetPos,,, Width, Height, ahk_id %hWnd%
	hBitmap := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, Width, Int, Height, Ptr)
	DllCall("SelectObject", Ptr, hMemDC, Ptr, hBitmap)
	DllCall("PrintWindow", Ptr, hWnd, Ptr, hMemDC, UInt, 0)
	Valid := DllCall("GetPixel", Ptr, hMemDC, UInt, X, UInt, Y)

	DllCall("DeleteObject", Ptr, hBitmap)
	DllCall("DeleteDC", Ptr, hMemDC)
	DllCall("ReleaseDC", Ptr, hWnd, Ptr, hDC)

	SetFormat, IntegerFast, Hex
	Valid := RegExReplace(Valid, "(..)(..)(..)(..)", "$1$4$3$2")

	if ( Steam == 0x2A2E33 )
	{
		BlockInput, On
		WinActivate, Steam Desktop Authenticator
		WinGetPos, X, Y, , , Steam Desktop Authenticator
		Sleep, 1000
		WinMove, Steam Desktop Authenticator, , , , 350, 400
		Sleep, 500
		MouseClick, Left, 200 + X, 350 + Y
		Sleep, 500
		MouseClick, Left, 201 + X, 350 + Y
		Sleep, 500
		MouseClick, Left, 200 + X, 350 + Y
		Sleep, 500
		SendInput, ^a{Backspace}
		Sleep, 500

		if ( ChangeText == "Checking the text = Enable" )
		{
		StringReplace, out, out, A, a, , All
		StringReplace, out, out, B, b, , All
		StringReplace, out, out, C, c, , All
		StringReplace, out, out, D, d, , All
		StringReplace, out, out, E, e, , All
		StringReplace, out, out, F, f, , All
		StringReplace, out, out, G, g, , All
		StringReplace, out, out, H, h, , All
		StringReplace, out, out, I, i, , All
		StringReplace, out, out, J, j, , All
		StringReplace, out, out, K, k, , All
		StringReplace, out, out, L, l, , All
		StringReplace, out, out, M, m, , All
		StringReplace, out, out, N, n, , All
		StringReplace, out, out, O, o, , All
		StringReplace, out, out, P, p, , All
		StringReplace, out, out, Q, q, , All
		StringReplace, out, out, R, r, , All
		StringReplace, out, out, S, s, , All
		StringReplace, out, out, T, t, , All
		StringReplace, out, out, U, u, , All
		StringReplace, out, out, V, v, , All
		StringReplace, out, out, W, w, , All
		StringReplace, out, out, X, x, , All
		StringReplace, out, out, Y, y, , All
		StringReplace, out, out, Z, z, , All
		}

		SendInput, %out%
		Sleep, 1000
		MouseClick, Left, 70 + X, 254 + Y
		Sleep, 500
		BlockInput, Off

		Loop
		{
		X := 150
		Y := 160

		WinGet, hWnd, ID, Steam Desktop Authenticator

		hDC := DllCall("GetDC", Ptr, hWnd, Ptr)
		hMemDC := DllCall("CreateCompatibleDC", Ptr, hDC)
		WinGetPos,,, Width, Height, ahk_id %hWnd%
		hBitmap := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, Width, Int, Height, Ptr)
		DllCall("SelectObject", Ptr, hMemDC, Ptr, hBitmap)
		DllCall("PrintWindow", Ptr, hWnd, Ptr, hMemDC, UInt, 0)
		SDA := DllCall("GetPixel", Ptr, hMemDC, UInt, X, UInt, Y)

		DllCall("DeleteObject", Ptr, hBitmap)
		DllCall("DeleteDC", Ptr, hMemDC)
		DllCall("ReleaseDC", Ptr, hWnd, Ptr, hDC)

		SetFormat, IntegerFast, Hex
		SDA := RegExReplace(SDA, "(..)(..)(..)(..)", "$1$4$3$2")

		if ( SDA == 0x06B025
			or SDA == 0x2499FF )
		{
			BlockInput, On
			WinActivate, Steam Desktop Authenticator
			WinGetPos, X, Y, , , Steam Desktop Authenticator
			Sleep, 1000
			MouseClick, Left, 290 + X, 130 + Y
			Sleep, 500
			MouseClick, Left, 290 + X, 130 + Y
			Sleep, 500
			MouseClick, Left, 290 + X, 130 + Y
			Sleep, 500
			Guard := Clipboard
			WinActivate, ahk_exe steam.exe
			WinGetPos, X, Y, , , ahk_exe steam.exe
			MouseClick, Left, 100 + X, 100 + Y
			Sleep, 1500
			SendInput, %Guard%{Enter}
			BlockInput, Off
			goto, next
		}
		else
		{
			Sleep, 1000
		}
		}
	}
	if else ( Valid == 0xA94847
			or Valid == 0x4748A9 )
			{
				relend1:
				SetFormat, IntegerFast, d
				WinGet, PIDnoValid, PID, ahk_pid %PID%
				SetFormat, IntegerFast, d
				FileDelete, %A_WorkingDir%/Settings/End/Valid.bat
				FileAppend, taskkill /F /PID %PIDnoValid%, %A_WorkingDir%/Settings/End/Valid.bat
				Run, %A_WorkingDir%/Settings/End/Valid.bat
				Sleep, 1000

				Process, Exist, ahk_pid %PIDnoValid%
				If ErrorLevel = 1
				{
					goto, relend1
				}

				XXY := XXY - 1
				InfoNoValid++

				if ( TGBot == "Telegram = Enable" )
{
;TG
	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt
	SetFormat, IntegerFast, d
	FileAppend, # %out% account isn't valid (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
	FileReadLine, CSGO, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1

	if (RegExMatch(A_LoopReadLine, "(.*)(/*)", out))
		{
			MsgBox8(1,2,CSGO)
		}

	MsgBox8(Option,EmojiPosition,Text)
	{
		FileReadLine, TelegramBotToken, %A_WorkingDir%/Settings/Telegram/Telegram.core, 1
		FileReadLine, TelegramBotChatID, %A_WorkingDir%/Settings/Telegram/Telegram.core, 2

		loop 1
		{
			UrlDownloadToFile https://api.telegram.org/bot%TelegramBotToken%/sendmessage?chat_id=%TelegramBotChatID%&text=%Text%, %A_ScriptDir%/Settings/Telegram/Telegram.log
			sleep 1000
			ifexist %A_ScriptDir%/Settings/Telegram/Telegram.log
			{
				break
			}
		}
		filedelete %A_ScriptDir%/Settings/Telegram/Telegram.log
	}
;TG
}
				Sleep, 3000
				goto,  Valid
			}
	else
	{
ImageSearch, PNGX, PNGY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *30 %A_AppData%/Cloud.png
if ErrorLevel = 0
{
	MouseClick, Left, PNGX, PNGY
}

		IfWinExist, Counter-Strike: Global Offensive - Direct3D 9
		{
			goto, next
		}
	}
}

next:
Sleep, 7500
Loop
{
	IfWinExist, Counter-Strike: Global Offensive - Direct3D 9
	{
	InfoValid++
	WinSetTitle, Counter-Strike: Global Offensive - Direct3D 9, , # %out%
	SetFormat, IntegerFast, d
	FileAppend, %PID%`n, %A_WorkingDir%/Settings/Data/Steam.txt
	FileAppend, # %out%`n, %A_WorkingDir%/Settings/Data/Data.txt

if ( TGBot == "Telegram = Enable" )
{
;TG
	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt
	SetFormat, IntegerFast, d
	if ( TGlite == "Simplified = Disable" )
	{
	FileAppend, # %out% account is connecting to the server (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
	}
	else
	{
	FileAppend, # %out% connect (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
	}

	FileReadLine, CSGO, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1

	if (RegExMatch(A_LoopReadLine, "(.*)(/*)", out))
		{
			MsgBox2(1,2,CSGO)
		}

	MsgBox2(Option,EmojiPosition,Text)
	{
		FileReadLine, TelegramBotToken, %A_WorkingDir%/Settings/Telegram/Telegram.core, 1
		FileReadLine, TelegramBotChatID, %A_WorkingDir%/Settings/Telegram/Telegram.core, 2

		loop 1
		{
			UrlDownloadToFile https://api.telegram.org/bot%TelegramBotToken%/sendmessage?chat_id=%TelegramBotChatID%&text=%Text%, %A_ScriptDir%/Settings/Telegram/Telegram.log
			sleep 1000
			ifexist %A_ScriptDir%/Settings/Telegram/Telegram.log
			{
				break
			}
		}
		filedelete %A_ScriptDir%/Settings/Telegram/Telegram.log
	}
;TG
}

	break
	}

	else
	{

	ImageSearch, PNGX, PNGY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *30 %A_AppData%/Cloud.png
	if ErrorLevel = 0
	{
		MouseClick, Left, PNGX, PNGY
	}

	X := 100
	Y := 400

	WinGet, hWnd, ID, Steam Guard — Необходима авторизация компьютера

	hDC := DllCall("GetDC", Ptr, hWnd, Ptr)
	hMemDC := DllCall("CreateCompatibleDC", Ptr, hDC)
	WinGetPos,,, Width, Height, ahk_id %hWnd%
	hBitmap := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, Width, Int, Height, Ptr)
	DllCall("SelectObject", Ptr, hMemDC, Ptr, hBitmap)
	DllCall("PrintWindow", Ptr, hWnd, Ptr, hMemDC, UInt, 0)
	Steam := DllCall("GetPixel", Ptr, hMemDC, UInt, X, UInt, Y)

	DllCall("DeleteObject", Ptr, hBitmap)
	DllCall("DeleteDC", Ptr, hMemDC)
	DllCall("ReleaseDC", Ptr, hWnd, Ptr, hDC)

	SetFormat, IntegerFast, Hex
	Steam := RegExReplace(Steam, "(..)(..)(..)(..)", "$1$4$3$2")

	if ( Steam == 0x2A2E33 )
	{
		goto, SDArel
	}
	}
}
goto, Valid
}


/*
	if ( TGBot == "Telegram = Enable" )
	{
;TG
	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt

	FileAppend, Accounts are running, we are waiting for cases to fall out, %A_WorkingDir%/Settings/Telegram/Telegram.txt
	FileReadLine, CSGO1, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1

	if (RegExMatch(A_LoopReadLine, "(.*)(/*)", out))
		{
			MsgBox7(1,2,CSGO1)
		}

	MsgBox7(Option,EmojiPosition,Text)
	{
		FileReadLine, TelegramBotToken, %A_WorkingDir%/Settings/Telegram/Telegram.core, 1
		FileReadLine, TelegramBotChatID, %A_WorkingDir%/Settings/Telegram/Telegram.core, 2

		loop 1
		{
			UrlDownloadToFile https://api.telegram.org/bot%TelegramBotToken%/sendmessage?chat_id=%TelegramBotChatID%&text=%Text%, %A_ScriptDir%/Settings/Telegram/Telegram.log
			sleep 1000
			ifexist %A_ScriptDir%/Settings/Telegram/Telegram.log
			{
				break
			}
		}
		filedelete %A_ScriptDir%/Settings/Telegram/Telegram.log
	}
;TG
	}
*/

TS:
h := 1

Checking:

Loop
{

Process, Exist, csgo.exe
If ErrorLevel = 0
{
	if ( TGBot == "Telegram = Enable" )
	{
;TG
	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt

	FileAppend, All accounts received a case. Valid accounts - %InfoValid%. Not valid accounts - %InfoNoValid%, %A_WorkingDir%/Settings/Telegram/Telegram.txt
	FileReadLine, CSGO1, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1

	if (RegExMatch(A_LoopReadLine, "(.*)(/*)", out))
		{
			MsgBox6(1,2,CSGO1)
		}

	MsgBox6(Option,EmojiPosition,Text)
	{
		FileReadLine, TelegramBotToken, %A_WorkingDir%/Settings/Telegram/Telegram.core, 1
		FileReadLine, TelegramBotChatID, %A_WorkingDir%/Settings/Telegram/Telegram.core, 2

		loop 1
		{
			UrlDownloadToFile https://api.telegram.org/bot%TelegramBotToken%/sendmessage?chat_id=%TelegramBotChatID%&text=%Text%, %A_ScriptDir%/Settings/Telegram/Telegram.log
			sleep 1000
			ifexist %A_ScriptDir%/Settings/Telegram/Telegram.log
			{
				break
			}
		}
		filedelete %A_ScriptDir%/Settings/Telegram/Telegram.log
	}
;TG
	}
	MsgBox, 64, , All accounts received a case
	FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
	FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
	FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
	FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
	ExitApp
}

	if ( h > i )
	{
		h := 1
	}

	FileReadLine, CSGO, %A_WorkingDir%/Settings/Data/Data.txt, %h%
	FileReadLine, Steam, %A_WorkingDir%/Settings/Data/Steam.txt, %h%

	X := 4
	Y := 21

	WinGet, hWnd, ID, %CSGO%

	hDC := DllCall("GetDC", Ptr, hWnd, Ptr)
	hMemDC := DllCall("CreateCompatibleDC", Ptr, hDC)
	WinGetPos,,, Width, Height, ahk_id %hWnd%
	hBitmap := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, Width, Int, Height, Ptr)
	DllCall("SelectObject", Ptr, hMemDC, Ptr, hBitmap)
	DllCall("PrintWindow", Ptr, hWnd, Ptr, hMemDC, UInt, 0)
	CS1 := DllCall("GetPixel", Ptr, hMemDC, UInt, X, UInt, Y)

	DllCall("DeleteObject", Ptr, hBitmap)
	DllCall("DeleteDC", Ptr, hMemDC)
	DllCall("ReleaseDC", Ptr, hWnd, Ptr, hDC)

	SetFormat, IntegerFast, Hex
	CS1 := RegExReplace(CS1, "(..)(..)(..)(..)", "$1$4$3$2")


	X := 6
	Y := 46

	WinGet, hWnd, ID, %CSGO%

	hDC := DllCall("GetDC", Ptr, hWnd, Ptr)
	hMemDC := DllCall("CreateCompatibleDC", Ptr, hDC)
	WinGetPos,,, Width, Height, ahk_id %hWnd%
	hBitmap := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, Width, Int, Height, Ptr)
	DllCall("SelectObject", Ptr, hMemDC, Ptr, hBitmap)
	DllCall("PrintWindow", Ptr, hWnd, Ptr, hMemDC, UInt, 0)
	CS := DllCall("GetPixel", Ptr, hMemDC, UInt, X, UInt, Y)

	DllCall("DeleteObject", Ptr, hBitmap)
	DllCall("DeleteDC", Ptr, hMemDC)
	DllCall("ReleaseDC", Ptr, hWnd, Ptr, hDC)

	SetFormat, IntegerFast, Hex
	CS := RegExReplace(CS, "(..)(..)(..)(..)", "$1$4$3$2")

	if ( CS == 0x898989
		or CS == 0x888888
		or CS == 0x7F7F7F
		or CS == 0x808080
		or CS1 == 0x808080
		or CS1 == 0x898989 )
	{
		SetFormat, IntegerFast, d
		WinGetPos, XCSGO, YCSGO, , , %CSGO%

		FileDelete, %A_WorkingDir%/Settings/End/Steam.bat
		WinGet, Wind, PID, %CSGO%
		FileAppend, taskkill /F /PID %Steam%`ntaskkill /F /PID %Wind%, %A_WorkingDir%/Settings/End/Steam.bat
		Run, %A_WorkingDir%/Settings/End/Steam.bat

		FormatTime, TimeString
		FileAppend, %CSGO% - case drop date %TimeString%`n, %A_WorkingDir%/Settings/Logs/Info.log

		if ( TGBot == "Telegram = Enable" )
	{
;TG
	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt


	FileAppend, %CSGO% received a case (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
	FileReadLine, CSGO1, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1

	if (RegExMatch(A_LoopReadLine, "(.*)(/*)", out))
		{
			MsgBox3(1,2,CSGO1)
		}

	MsgBox3(Option,EmojiPosition,Text)
	{
		FileReadLine, TelegramBotToken, %A_WorkingDir%/Settings/Telegram/Telegram.core, 1
		FileReadLine, TelegramBotChatID, %A_WorkingDir%/Settings/Telegram/Telegram.core, 2

		loop 1
		{
			UrlDownloadToFile https://api.telegram.org/bot%TelegramBotToken%/sendmessage?chat_id=%TelegramBotChatID%&text=%Text%, %A_ScriptDir%/Settings/Telegram/Telegram.log
			sleep 1000
			ifexist %A_ScriptDir%/Settings/Telegram/Telegram.log
			{
				break
			}
		}
		filedelete %A_ScriptDir%/Settings/Telegram/Telegram.log
	}
;TG
	}
		Sleep, 5000

		Second:
		i++

		FileReadLine, login, %A_WorkingDir%/Settings/IDLE.txt, i

		if ( login == "End" )
		{
			i := i - 1
			goto, Checking
		}

FileReadLine, Border, %A_WorkingDir%/Settings/Parameters/Settings.txt, 3
if ( Border = "No-Border Mode = Enable" )
{
	NB = "-noborder"
}

if ( CheckBox1 == 0
	and CheckBox2 == 0 )
		{
		Run, %way%\steam.exe -login %login% -applaunch 730 +exec IDLE.cfg -exec IDLEe.cfg -language Russian -w 640 -h 480 -window -nosound -m_rawinput 0 -novid +connect %Connect% -x %XCSGO% -y %YCSGO% -nojoy +cl_forcepreload 1 +mat_phong +mat_queue_mode 2 -nopreloadmodels %NB%, , , PID
		}

if ( CheckBox1 == 1
	and CheckBox2 == 0)
		{
		Run, %way%\steam.exe -login %login% -applaunch 730 +exec IDLE.cfg -exec IDLEe.cfg -language Russian -no-browser -w 640 -h 480 -window -nosound -m_rawinput 0 -novid +connect %Connect% -x %XCSGO% -y %YCSGO% -nojoy +cl_forcepreload 1 +mat_phong +mat_queue_mode 2 -nopreloadmodels %NB%, , , PID
		}

if ( CheckBox1 == 0
	and CheckBox2 == 1 )
		{
		Run, %way%\steam.exe -login %login% -applaunch 730 +exec IDLE.cfg -exec IDLEe.cfg -language Russian -low -w 640 -h 480 -window -nosound -m_rawinput 0 -novid +connect %Connect% -x %XCSGO% -y %YCSGO% -nojoy +cl_forcepreload 1 +mat_phong +mat_queue_mode 2 -nopreloadmodels %NB%, , , PID
		}

if ( CheckBox1 == 1
	and CheckBox2 == 1)
		{
		Run, %way%\steam.exe -login %login% -applaunch 730 +exec IDLE.cfg -exec IDLEe.cfg -language Russian -low -no-browser -w 640 -h 480 -window -nosound -m_rawinput 0 -novid +connect %Connect% -x %XCSGO% -y %YCSGO% -nojoy +cl_forcepreload 1 +mat_phong +mat_queue_mode 2 -nopreloadmodels %NB%, , , PID
		}

		Loop, Parse, login, %A_Space%
		{
		out := A_LoopField
		break
		}


Kolvo++

if ( TGBot == "Telegram = Enable" )
{
;TG
FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt

if ( TGlite == "Simplified = Disable" )
{
FileAppend, # %out% account is being launched (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
}
else
{
FileAppend, # %out% start (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
}

FileReadLine, CSGO, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1

if (RegExMatch(A_LoopReadLine, "(.*)(/*)", out))
	{
		MsgBox4(1,2,CSGO)
	}

MsgBox4(Option,EmojiPosition,Text)
{
	FileReadLine, TelegramBotToken, %A_WorkingDir%/Settings/Telegram/Telegram.core, 1
	FileReadLine, TelegramBotChatID, %A_WorkingDir%/Settings/Telegram/Telegram.core, 2

	loop 1
	{
		UrlDownloadToFile https://api.telegram.org/bot%TelegramBotToken%/sendmessage?chat_id=%TelegramBotChatID%&text=%Text%, %A_ScriptDir%/Settings/Telegram/Telegram.log
		sleep 1000
		ifexist %A_ScriptDir%/Settings/Telegram/Telegram.log
		{
			break
		}
	}
	filedelete %A_ScriptDir%/Settings/Telegram/Telegram.log
}
;TG
}

Loop, Parse, login, %A_Space%
{
out := A_LoopField
break
}

SDArelo:
Loop
{
	X := 100
	Y := 400

	WinGet, hWnd, ID, Steam Guard — Необходима авторизация компьютера

	hDC := DllCall("GetDC", Ptr, hWnd, Ptr)
	hMemDC := DllCall("CreateCompatibleDC", Ptr, hDC)
	WinGetPos,,, Width, Height, ahk_id %hWnd%
	hBitmap := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, Width, Int, Height, Ptr)
	DllCall("SelectObject", Ptr, hMemDC, Ptr, hBitmap)
	DllCall("PrintWindow", Ptr, hWnd, Ptr, hMemDC, UInt, 0)
	Steam := DllCall("GetPixel", Ptr, hMemDC, UInt, X, UInt, Y)

	DllCall("DeleteObject", Ptr, hBitmap)
	DllCall("DeleteDC", Ptr, hMemDC)
	DllCall("ReleaseDC", Ptr, hWnd, Ptr, hDC)

	SetFormat, IntegerFast, Hex
	Steam := RegExReplace(Steam, "(..)(..)(..)(..)", "$1$4$3$2")



	X := 27
	Y := 245

	WinGet, hWnd, ID, Вход в Steam

	hDC := DllCall("GetDC", Ptr, hWnd, Ptr)
	hMemDC := DllCall("CreateCompatibleDC", Ptr, hDC)
	WinGetPos,,, Width, Height, ahk_id %hWnd%
	hBitmap := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, Width, Int, Height, Ptr)
	DllCall("SelectObject", Ptr, hMemDC, Ptr, hBitmap)
	DllCall("PrintWindow", Ptr, hWnd, Ptr, hMemDC, UInt, 0)
	Valid := DllCall("GetPixel", Ptr, hMemDC, UInt, X, UInt, Y)

	DllCall("DeleteObject", Ptr, hBitmap)
	DllCall("DeleteDC", Ptr, hMemDC)
	DllCall("ReleaseDC", Ptr, hWnd, Ptr, hDC)

	SetFormat, IntegerFast, Hex
	Valid := RegExReplace(Valid, "(..)(..)(..)(..)", "$1$4$3$2")

	if ( Steam == 0x2A2E33 )
	{
		BlockInput, On
		WinActivate, Steam Desktop Authenticator
		WinGetPos, X, Y, , , Steam Desktop Authenticator
		Sleep, 1000
		WinMove, Steam Desktop Authenticator, , , , 340, 330
		Sleep, 500
		MouseClick, Left, 200 + X, 350 + Y
		Sleep, 500
		MouseClick, Left, 201 + X, 350 + Y
		Sleep, 500
		MouseClick, Left, 200 + X, 350 + Y
		Sleep, 500
		SendInput, ^a{Backspace}
		Sleep, 500

		if ( ChangeText == "Checking the text = Enable" )
		{
		StringReplace, out, out, A, a, , All
		StringReplace, out, out, B, b, , All
		StringReplace, out, out, C, c, , All
		StringReplace, out, out, D, d, , All
		StringReplace, out, out, E, e, , All
		StringReplace, out, out, F, f, , All
		StringReplace, out, out, G, g, , All
		StringReplace, out, out, H, h, , All
		StringReplace, out, out, I, i, , All
		StringReplace, out, out, J, j, , All
		StringReplace, out, out, K, k, , All
		StringReplace, out, out, L, l, , All
		StringReplace, out, out, M, m, , All
		StringReplace, out, out, N, n, , All
		StringReplace, out, out, O, o, , All
		StringReplace, out, out, P, p, , All
		StringReplace, out, out, Q, q, , All
		StringReplace, out, out, R, r, , All
		StringReplace, out, out, S, s, , All
		StringReplace, out, out, T, t, , All
		StringReplace, out, out, U, u, , All
		StringReplace, out, out, V, v, , All
		StringReplace, out, out, W, w, , All
		StringReplace, out, out, X, x, , All
		StringReplace, out, out, Y, y, , All
		StringReplace, out, out, Z, z, , All
		}

		SendInput, %out%
		Sleep, 1000
		MouseClick, Left, 70 + X, 254 + Y
		Sleep, 500
		BlockInput, Off

		Loop
		{
		X := 150
		Y := 160

		WinGet, hWnd, ID, Steam Desktop Authenticator

		hDC := DllCall("GetDC", Ptr, hWnd, Ptr)
		hMemDC := DllCall("CreateCompatibleDC", Ptr, hDC)
		WinGetPos,,, Width, Height, ahk_id %hWnd%
		hBitmap := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, Width, Int, Height, Ptr)
		DllCall("SelectObject", Ptr, hMemDC, Ptr, hBitmap)
		DllCall("PrintWindow", Ptr, hWnd, Ptr, hMemDC, UInt, 0)
		SDA := DllCall("GetPixel", Ptr, hMemDC, UInt, X, UInt, Y)

		DllCall("DeleteObject", Ptr, hBitmap)
		DllCall("DeleteDC", Ptr, hMemDC)
		DllCall("ReleaseDC", Ptr, hWnd, Ptr, hDC)

		SetFormat, IntegerFast, Hex
		SDA := RegExReplace(SDA, "(..)(..)(..)(..)", "$1$4$3$2")

		if ( SDA == 0x06B025
			or SDA == 0x2499FF )
		{
			BlockInput, On
			WinActivate, Steam Desktop Authenticator
			WinGetPos, X, Y, , , Steam Desktop Authenticator
			Sleep, 1000
			MouseClick, Left, 290 + X, 130 + Y
			Sleep, 500
			MouseClick, Left, 291 + X, 130 + Y
			Sleep, 500
			MouseClick, Left, 290 + X, 130 + Y
			Sleep, 500
			Guard := Clipboard
			WinActivate, ahk_exe steam.exe
			WinGetPos, X, Y, , , ahk_exe steam.exe
			MouseClick, Left, 100 + X, 100 + Y
			Sleep, 1500
			SendInput, %Guard%{Enter}
			BlockInput, Off
			goto, next1
		}
		else
		{
			Sleep, 1000
		}
		}
	}

	if else ( Valid == 0xA94847
			or Valid == 0x4748A9 )
			{
				relend2:
				SetFormat, IntegerFast, d
				WinGet, PIDnoValid, PID, ahk_pid %PID%
				SetFormat, IntegerFast, d
				FileDelete, %A_WorkingDir%/Settings/End/Valid.bat
				FileAppend, taskkill /F /PID %PIDnoValid%, %A_WorkingDir%/Settings/End/Valid.bat
				Run, %A_WorkingDir%/Settings/End/Valid.bat
				Sleep, 1000

				Process, Exist, ahk_pid %PIDnoValid%
				If ErrorLevel = 1
				{
					goto, relend2
				}

				InfoNoValid++

				if ( TGBot == "Telegram = Enable" )
{
;TG
	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt
	SetFormat, IntegerFast, d
	FileAppend, # %out% account isn't valid (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
	FileReadLine, CSGO, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1

	if (RegExMatch(A_LoopReadLine, "(.*)(/*)", out))
		{
			MsgBox9(1,2,CSGO)
		}

	MsgBox9(Option,EmojiPosition,Text)
	{
		FileReadLine, TelegramBotToken, %A_WorkingDir%/Settings/Telegram/Telegram.core, 1
		FileReadLine, TelegramBotChatID, %A_WorkingDir%/Settings/Telegram/Telegram.core, 2

		loop 1
		{
			UrlDownloadToFile https://api.telegram.org/bot%TelegramBotToken%/sendmessage?chat_id=%TelegramBotChatID%&text=%Text%, %A_ScriptDir%/Settings/Telegram/Telegram.log
			sleep 1000
			ifexist %A_ScriptDir%/Settings/Telegram/Telegram.log
			{
				break
			}
		}
		filedelete %A_ScriptDir%/Settings/Telegram/Telegram.log
	}
;TG
}
	goto, second
			}
else
	{
ImageSearch, PNGX, PNGY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *30 %A_AppData%/Cloud.png
if ErrorLevel = 0
{
	MouseClick, Left, PNGX, PNGY
}

		IfWinExist, Counter-Strike: Global Offensive - Direct3D 9
		{
			goto, next1
		}
	}
}

next1:
Sleep, 7500
Loop
{
	IfWinExist, Counter-Strike: Global Offensive - Direct3D 9
	{
	InfoValid++
	WinSetTitle, Counter-Strike: Global Offensive - Direct3D 9, , # %out%
	SetFormat, IntegerFast, d
	FileAppend, %PID%`n, %A_WorkingDir%/Settings/Data/Steam.txt
	FileAppend, # %out%`n, %A_WorkingDir%/Settings/Data/Data.txt

	if ( TGBot == "Telegram = Enable" )
{
;TG
	FileDelete, %A_WorkingDir%/Settings/Telegram/Telegram.txt

	if ( TGlite == "Simplified = Disable" )
	{
	FileAppend, # %out% account is connecting to the server (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
	}
	else
	{
	FileAppend, # %out% connect (%Kolvo%/%CheckMax%), %A_WorkingDir%/Settings/Telegram/Telegram.txt
	}

	FileReadLine, CSGO, %A_WorkingDir%/Settings/Telegram/Telegram.txt, 1

	if (RegExMatch(A_LoopReadLine, "(.*)(/*)", out))
		{
			MsgBox5(1,2,CSGO)
		}

	MsgBox5(Option,EmojiPosition,Text)
	{
		FileReadLine, TelegramBotToken, %A_WorkingDir%/Settings/Telegram/Telegram.core, 1
		FileReadLine, TelegramBotChatID, %A_WorkingDir%/Settings/Telegram/Telegram.core, 2

		loop 1
		{
			UrlDownloadToFile https://api.telegram.org/bot%TelegramBotToken%/sendmessage?chat_id=%TelegramBotChatID%&text=%Text%, %A_ScriptDir%/Settings/Telegram/Telegram.log
			sleep 1000
			ifexist %A_ScriptDir%/Settings/Telegram/Telegram.log
			{
				break
			}
		}
		filedelete %A_ScriptDir%/Settings/Telegram/Telegram.log
	}
;TG
}

	break
	}

	else
	{

	ImageSearch, PNGX, PNGY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *30 %A_AppData%/Cloud.png
	if ErrorLevel = 0
	{
		MouseClick, Left, PNGX, PNGY
	}

	X := 100
	Y := 400

	WinGet, hWnd, ID, Steam Guard — Необходима авторизация компьютера

	hDC := DllCall("GetDC", Ptr, hWnd, Ptr)
	hMemDC := DllCall("CreateCompatibleDC", Ptr, hDC)
	WinGetPos,,, Width, Height, ahk_id %hWnd%
	hBitmap := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, Width, Int, Height, Ptr)
	DllCall("SelectObject", Ptr, hMemDC, Ptr, hBitmap)
	DllCall("PrintWindow", Ptr, hWnd, Ptr, hMemDC, UInt, 0)
	Steam := DllCall("GetPixel", Ptr, hMemDC, UInt, X, UInt, Y)

	DllCall("DeleteObject", Ptr, hBitmap)
	DllCall("DeleteDC", Ptr, hMemDC)
	DllCall("ReleaseDC", Ptr, hWnd, Ptr, hDC)

	SetFormat, IntegerFast, Hex
	Steam := RegExReplace(Steam, "(..)(..)(..)(..)", "$1$4$3$2")

	if ( Steam == 0x2A2E33 )
	{
		goto, SDArelo
	}
	}
}

}

	else
	{
		h++
	}
}
return

LanguageENG:
FileDelete, %A_WorkingDir%/Settings/Parameters/Language.txt
FileAppend, Language = Russian, %A_WorkingDir%/Settings/Parameters/Language.txt
GuiControl, Hide, LanguageENG
GuiControl, Show, LanguageRUS
return

LanguageRUS:
FileDelete, %A_WorkingDir%/Settings/Parameters/Language.txt
FileAppend, Language = English, %A_WorkingDir%/Settings/Parameters/Language.txt
GuiControl, Show, LanguageENG
GuiControl, Hide, LanguageRUS
return

InfoNB:
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
if ( Text == "Language = Russian" )
{
	MsgBox, 64, , No-Browser Mode - это функция, которая способна облегчить нагрузку на ваш ПК, так как она полностью отключает Overlay Steam. Если эта функция включена, то ошибка с синхронизацией не появится визаульно, из-за чего вы можете подумать, что аккаунт просто не запустился, а панель остановится
}
if ( Text == "Language = English" )
{
	MsgBox, 64, , No-Browser Mode is a feature that can ease the load on your PC as it completely disables Overlay Steam. If this function is enabled, then the synchronization error will not appear visually, because of which you may think that the account simply did not start, and the panel will stop
}
return

InfoLPM:
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
if ( Text == "Language = Russian" )
{
	MsgBox, 64, , Добавляет к параметрам запуска команду -low. Данная функуция может снизить нагрузку на ваш ПК, хоть и не значительно
}
if ( Text == "Language = English" )
{
	MsgBox, 64, , Adds the -low command to the startup options. This feature can reduce the load on your PC, although not significantly
}
return

InfoTT:
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
if ( Text == "Language = Russian" )
{
	MsgBox, 64, , Убирает рамку окна CS:GO, ускоряется запуск аккаунтов
}
if ( Text == "Language = English" )
{
	MsgBox, 64, , Removes the CS:GO window frame, speeds up the launching of accounts
}
return

InfoTL:
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
if ( Text == "Language = Russian" )
{
	MsgBox, 64, , Уведомления в вашего Telegram бота в полном виде
}
if ( Text == "Language = English" )
{
	MsgBox, 64, , Notifications in your Telegram bot in full
}
return

InfoSTL:
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
if ( Text == "Language = Russian" )
{
	MsgBox, 64, , Уведомления в вашего Telegram бота в сокращённом виде
}
if ( Text == "Language = English" )
{
	MsgBox, 64, , Notifications in your Telegram bot in shortened
}
return

InfoRT:
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
if ( Text == "Language = Russian" )
{
	MsgBox, 64, , Замена заглавных букв на строчные для ввода логина в SDA. Не рекомендуется к использованию, лучше сравните ваши логины в SDA и IDLE.txt и сделайте логины в IDLE.txt такими же как и в SDA
}
if ( Text == "Language = English" )
{
	MsgBox, 64, , Replacing capital letters with lowercase for entering a login in SDA. Not recommended for use, better compare your logins in SDA and IDLE.txt and make logins in IDLE.txt the same as in SDA
}
return

InfoDBW:
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
if ( Text == "Language = Russian" )
{
	MsgBox, 64, , Расстояние между окнами в пикселях
}
if ( Text == "Language = English" )
{
	MsgBox, 64, , Distance between windows in pixels
}
return

InfoCB:
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
if ( Text == "Language = Russian" )
{
	MsgBox, 64, , Введите в поле одно из следующих слов (без кавычек и учитывайте большие и маленькие буквы), которое вы хотите указать как клавишу быстрого закрытия: "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "A", "S", "D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M", "Esc", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12", "Tab", "Caps", "Enter", "Shift", "Ctrl", "Win", "Alt", "Space", ";", "'", "\", "/", "-", "="`nУчтите, что все клавиши прописаны на английской раскладке
}
if ( Text == "Language = English" )
{
	MsgBox, 64, , Enter one of the following words in the field (without quotes and take into account large and small letters) that you want to specify as a quick close key: "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "A", "S", "D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M", "Esc", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12", "Tab", "Caps", "Enter", "Shift", "Ctrl", "Win", "Alt", "Space", ";", "'", "\", "/", "-", "="`nNote that all keys are written in English layout
}
return

InfoWC:
FileReadLine, Text, %A_WorkingDir%/Settings/Parameters/Language.txt, 1
if ( Text == "Language = Russian" )
{
	MsgBox, 64, , Если данная функция включена, то панель будет ждать выпадения кейса на аккаунт, если же функция выключена, по то истечению 4-х часов после запуска аккаунта он будет закрыт в случае, если за 4 часа на аккаунт так и не выпал кейс
}
if ( Text == "Language = English" )
{
	MsgBox, 64, , If this feature is turned on, the panel will wait for a case to drop on the account, but if the feature is turned off, then after 4 hours after starting the account, it will be closed if the account for 4 hours and still not dropped the case
}
return

GuiMove:
PostMessage, 0xA1, 2,,, A
return

~sc1::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Esc" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc3B::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F1" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc3C::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F2" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc3D::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F3" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc3E::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F4" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc3F::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F5" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc40::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F6" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc41::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F7" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc42::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F8" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc43::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F9" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc44::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F10" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc57::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F11" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc58::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F12" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc2::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "1" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc3::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "2" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc4::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "3" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc5::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "4" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc6::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "5" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc7::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "6" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc8::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "7" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc9::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "8" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~scA::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "9" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~scB::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "0" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~scC::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "-" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~scD::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "=" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~scF::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Tab" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc10::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Q" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc11::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "W" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc12::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "E" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc13::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "R" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc14::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "T" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc15::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Y" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc16::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "U" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc17::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "I" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc18::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "O" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc19::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "P" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc1A::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "[" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc1B::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "]" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc1C::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Enter" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc3A::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Caps" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc1E::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "A" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc1F::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "S" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc20::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "D" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc21::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "F" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc22::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "G" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc23::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "H" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc24::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "J" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc25::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "K" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc26::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "L" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc27::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == ";" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc28::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "'" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc2B::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "\" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc2A::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Shift" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc2C::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Z" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc2D::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "X" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc2E::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "C" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc2F::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "V" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc30::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "B" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc31::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "N" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc32::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "M" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc33::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "," )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc34::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "." )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc35::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "/" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc1D::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Ctrl" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc15B::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Win" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc38::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Alt" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return

~sc39::
FileReadLine, Bind, %A_WorkingDir%/Settings/Parameters/Settings.txt, 7
{
	if ( Bind == "Space" )
	{
Run, %A_WorkingDir%/Settings/End.bat
FileDelete, %A_WorkingDir%/Settings/Data/Data.txt
FileDelete, %A_WorkingDir%/Settings/Data/Steam.txt
FileDelete, %A_WorkingDir%/Settings/Data/Windows.txt
FileRemoveDir, %A_WorkingDir%/Settings/Data, 1
ExitApp
return
	}
}
return