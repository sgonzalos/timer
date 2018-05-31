#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Timer", 271, 94, 194, 128)
GUISetFont(9, 400, 0, "Meiryo UI")
$Label1 = GUICtrlCreateLabel("Label1", 8, 16, 251, 48, $SS_CENTER)
GUICtrlSetFont(-1, 26, 400, 0, "Meiryo UI")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Local $hTimer = TimerInit()

While 1
	$nMsg = GUIGetMsg()
	GUICtrlSetData ( $Label1, Round (TimerDiff($hTimer),1) )

	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd
