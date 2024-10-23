@echo off

cls

echo Don't mind me! 
echo.
echo I'm just creating a shortcut to program for you
echo If your anti-virus warns you about suspicious stuff just allow the program to cook
echo.
echo That's all!
echo Have a nice time using Konsol.bat :)
echo.
echo - Kapi
echo.
echo P.S - Shortcut Making Program is totally not stolen from Die-Konsolle.bat :3

setlocal
set "currentDir=%~dp0"
set "currentDir=%currentDir:~0,-1%"
PowerShell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%USERPROFILE%\Desktop\Konsol.bat.lnk');$s.TargetPath='%currentDir%\konsol.exe';$s.IconLocation='%currentDir%\konsol.ico';$s.Save()"

endlocal

exit