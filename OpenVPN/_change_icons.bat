@echo off
echo ***
echo If you ran _change_icons.bat please run _change_icons_sudo.bat instead!
echo ***
tasklist /fi "imagename eq openvpn-gui.exe" | find /i "openvpn-gui.exe" > nul
if "%errorlevel%"=="0" (
    echo Please close OpenVPN-GUI then run this batch file again!
    pause
    exit
)
ResourceHacker.exe -script replace-tray-icons.txt
echo Tray icons for OpenVPN-GUI changed successfully!
pause
rem This exit isn't ideal but i couldn't find another way to call this script
rem and cleanly exit the command window afterwards.
exit