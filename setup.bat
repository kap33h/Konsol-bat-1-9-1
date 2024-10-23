@echo off
mode 35,23 >nul
cls
echo ----------------------------------
echo            Konsol.bat
echo ----------------------------------
echo  Hello and welcome to the setup!
echo ----------------------------------
echo  This program will config your
echo  PC to perfectly run the
echo  program.
echo ----------------------------------
echo  And don't worry! You may not
echo  notice the changes unless if you
echo  are using a modded terminal
echo ----------------------------------
echo  Konsol.bat requirements:
echo   - Windows 7 OS or newer
echo     (Windows 10+ recommended)
echo   - Powershell Support
echo ----------------------------------
echo  What does the setup do?
echo   - Makes shortcut to program
echo     (optional)
echo ----------------------------------
pause | echo     Press any key to continue
cls

rem frame1

echo ----------------------------------
echo            Konsol.bat
echo ----------------------------------
echo Download in progress!
echo Do not turn off the program or
echo you may end up with corrupted
echo software files
echo  - Kapi
echo ----------------------------------

echo          0%  -----------
echo     Creating Directories...
mkdir "C:\Konsol.bat"
mkdir "C:\Konsol.bat\extras"
cls

rem frame2

echo ----------------------------------
echo            Konsol.bat
echo ----------------------------------
echo Download in progress!
echo Do not turn off the program or
echo you may end up with corrupted
echo software files
echo  - Kapi
echo ----------------------------------
echo         20%  //---------
echo       Importing base files...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/kap33h/Konsol-bat-1-9-1/main/konsol.bat' -OutFile 'C:\Konsol.bat\konsol.bat'"
cls

rem frame3

echo ----------------------------------
echo            Konsol.bat
echo ----------------------------------
echo Download in progress!
echo Do not turn off the program or
echo you may end up with corrupted
echo software files
echo  - Kapi
echo ----------------------------------
echo         40%  ////-------
echo   Importing launcher...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/kap33h/Konsol-bat-1-9-1/main/konsol.exe' -OutFile 'C:\Konsol.bat\konsol.exe'"
cls

rem frame4

echo ----------------------------------
echo            Konsol.bat
echo ----------------------------------
echo Download in progress!
echo Do not turn off the program or
echo you may end up with corrupted
echo software files
echo  - Kapi
echo ----------------------------------
echo         60%  ///////----
echo    Importing graphical stuff...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/kap33h/Konsol-bat-1-9-1/main/konsol.ico' -OutFile 'C:\Konsol.bat\konsol.ico'"
cls

rem frame5

echo ----------------------------------
echo            Konsol.bat
echo ----------------------------------
echo Download in progress!
echo Do not turn off the program or
echo you may end up with corrupted
echo software files
echo  - Kapi
echo ----------------------------------
echo         80%  /////////--
echo      Importing extra stuff...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/kap33h/Konsol-bat-1-9-1/main/SHORTCUT.bat' -OutFile 'C:\Konsol.bat\SHORTCUT.bat'"
cls

rem frame6

echo ----------------------------------
echo            Konsol.bat
echo ----------------------------------
echo Download in progress!
echo Do not turn off the program or
echo you may end up with corrupted
echo software files
echo  - Kapi
echo ----------------------------------
echo         100% ///////////
echo         Finishing up...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/kap33h/Konsol-bat-1-9-1/main/README.md' -OutFile 'C:\Konsol.bat\README.md'"

rem frame7

echo ----------------------------------
echo            Konsol.bat
echo ----------------------------------
echo All done!
echo Thank you for choosing Konsol.bat
echo ----------------------------------
echo Would you like to create a shortcut
echo        to the program?
echo       [Y]es (press Y key)
echo       [N]o  (press N key)
choice /c yn /n /m ">"

if %errorlevel% == 1 (
    goto yes
)
if %errorlevel% == 2 (
    goto no
)
:yes
start SHORTCUT.bat
powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('If setup didn't work try downloading all the files manualy from my github page')"
goto end

:no
goto end

:end
echo ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
echo.
echo               Done!
echo.
echo ''''''''''''''''''''''''''''''''''

pause | echo     Press any key to continue
cls