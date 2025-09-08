@echo off
echo Compiling Java Game Project...
echo.

REM Create bin directory if it doesn't exist
if not exist bin mkdir bin

REM Compile all Java files
javac -d bin *.java

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✓ Compilation successful!
    echo ✓ Compiled files are in the 'bin' directory
    echo.
    echo To run the game, use: run.bat
) else (
    echo.
    echo ✗ Compilation failed!
    echo Please check for errors and try again.
)

pause
