@echo off
echo Starting Java Game Collection...
echo.

REM Check if bin directory exists
if not exist bin (
    echo ✗ Game not compiled yet!
    echo Please run compile.bat first to compile the game.
    echo.
    pause
    exit /b 1
)

REM Run the game
java -cp bin GameMenu

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ✗ Failed to start the game!
    echo Make sure Java is installed and in your PATH.
)

pause
