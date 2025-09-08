Write-Host "Starting Java Game Collection..." -ForegroundColor Cyan
Write-Host ""

# Check if bin directory exists
if (!(Test-Path "bin")) {
    Write-Host "✗ Game not compiled yet!" -ForegroundColor Red
    Write-Host "Please run .\compile.ps1 first to compile the game." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Press any key to continue..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit 1
}

# Run the game
$runResult = & java -cp bin GameMenu 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "✗ Failed to start the game!" -ForegroundColor Red
    Write-Host "Make sure Java is installed and in your PATH." -ForegroundColor Yellow
    Write-Host ""
    Write-Host $runResult -ForegroundColor Red
}

Write-Host ""
Write-Host "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
