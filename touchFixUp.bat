:: Batch Script to fix touch input on Beryllium with NovaTek and FocalTech Touch Screens.
:: Written by NeoBlizzard.

:: NOTE:- This script assumes that W is the assigned letter for the Windows partition. 
:: If not, edit it accordingly in the line below.

@echo off
reg load HKLM\OFFLINE W:/Windows/System32/config/SYSTEM

reg add "HKLM\OFFLINE\TOUCH\SCREENPROPERTIES" /v TouchPhysicalWidth /t REG_DWORD /d 0x0000438
reg add "HKLM\OFFLINE\TOUCH\SCREENPROPERTIES" /v TouchPhysicalHeight /t REG_DWORD /d 0x00008c6
reg add "HKLM\OFFLINE\TOUCH\SCREENPROPERTIES" /v DisplayPhysicalWidth /t REG_DWORD /d 0x0000438
reg add "HKLM\OFFLINE\TOUCH\SCREENPROPERTIES" /v DisplayPhysicalHeight /t REG_DWORD /d 0x00008c6
reg add "HKLM\OFFLINE\TOUCH\SCREENPROPERTIES" /v DisplayViewableWidth /t REG_DWORD /d 0x0000438
reg add "HKLM\OFFLINE\TOUCH\SCREENPROPERTIES" /v DisplayViewableHeight /t REG_DWORD /d 0x00008c6

reg unload HKLM\OFFLINE

::There is no check to determine whether the script worked or not.
echo Touch Screen Properties have been injected successfully (I suppose...)
echo You can now reboot your Pocophone F1 to Windows!
pause 