@echo off

rem Run this script as admin
rem Change the value below to the mounting folder's parent directory
set base=C:\\

if "%2"=="--pre" (
	set drive="%3:"
	set folder="%base%%3_DRIVE"
	goto driveset
)
if "%3"=="--pre" (
	set drive="%2:"
	set folder="%base%%2_DRIVE"
	goto driveset
)

set drive="%2:"
set folder="%base%DRIVE_%2"
:driveset
if "%1"=="add" (
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\DOS Devices" /v %drive% /d %folder%
)
if "%1"=="rm" (
	reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\DOS Devices" /v %drive%
)
pause