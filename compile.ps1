Write-Host "Compiling Java Game Project..." -ForegroundColor Cyan
Write-Host ""

# Create bin directory if it doesn't exist
if (!(Test-Path "bin")) {
    New-Item -ItemType Directory -Name "bin" | Out-Null
}

# Compile all Java files
$compileResult = & javac -d bin *.java 2>&1

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✓ Compilation successful!" -ForegroundColor Green
    Write-Host "✓ Compiled files are in the 'bin' directory" -ForegroundColor Green
    Write-Host ""
    Write-Host "To run the game, use: .\run.ps1" -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "✗ Compilation failed!" -ForegroundColor Red
    Write-Host "Please check for errors and try again." -ForegroundColor Red
    Write-Host ""
    Write-Host $compileResult -ForegroundColor Red
}

Write-Host ""
Write-Host "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
