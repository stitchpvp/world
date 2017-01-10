@echo off
REM ############################################################################
REM #
REM #      B A S I C   C O N F I G U R A T I O N
REM #
REM ############################################################################

REM Set the following value to the full drive\path location of your EQ2Emu server
REM Or, leave as .\ to copy into the distrib folder (recommended)

set serverpath=.\

REM ############################################################################
REM #
REM #     D O   N O T   M O D I F Y   B E Y O N D   T H I S   P O I N T
REM #
REM ############################################################################
if not exist %serverpath%\nul GOTO badpath

:menu
cls
ECHO.
ECHO ############################################################################
ECHO #
ECHO #          S E R V E R   D I S T R I B U T I O N   B U I L D E R
ECHO #
ECHO ############################################################################
ECHO.
ECHO			Choose from the following options:
ECHO.
ECHO			1. Copy Required Server Files
ECHO			2. Copy Latest LUA Scripts
ECHO			3. Show SQL Patches
ECHO.
ECHO			[S]ettings / [E]xit
ECHO.
set /p l=         	Choice:
if %l%==* goto error
if %l%==1 goto copyserver
if %l%==2 goto copylua
if %l%==3 goto showpatch
if %l%==s goto settings
if %l%==S goto settings
if %l%==e goto quit
if %l%==E goto quit
if %l%==q goto quit
if %l%==Q goto quit
if %l%==x goto quit
if %l%==X goto quit
if %l%==0 goto quit
goto error


:copyserver
xcopy ..\structs\*.xml %serverpath% /y /d
xcopy ..\bin\eq2emu-world.exe %serverpath% /y /d
xcopy ..\configs\*.ini %serverpath% /y /d
xcopy ..\utils\zlib.dll %serverpath% /y /d
xcopy ..\docs\changelog.txt %serverpath% /y /d
set copydone=1
PAUSE
goto menu


:copylua
echo Not Yet.
PAUSE
goto menu

:showpatch
echo Not Yet.
PAUSE
goto menu


:settings
cls
ECHO.
ECHO ############################################################################
ECHO #
ECHO #				   S E T T I N G S
ECHO #
ECHO ############################################################################
ECHO.
ECHO   Server Path = %serverpath%
ECHO.
PAUSE    
GOTO menu


:error
CLS
ECHO.
ECHO.
ECHO [ERROR] An error has occured, you will be directed back to the
ECHO [ERROR] main menu.
PAUSE    
GOTO menu

:badpath
ECHO.
ECHO.
ECHO [ERROR] An error has occured; Bad Path Set: %serverpath%
ECHO [ERROR] You will be directed back to the main menu.
PAUSE
GOTO menu


:quit
ECHO.
if .%copydone%==.1 echo Don't forget to edit your LoginServer.ini and world_db.ini!
ECHO.
set copydone=

