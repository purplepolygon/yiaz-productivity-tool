# -----------------------------------------------------------------------------
# Initialize
# -----------------------------------------------------------------------------
Write-Host "Welcome to the Yiaz Productivity Suite Version 1.0"
Write-Host "Licensed under GPL"
Write-Host "Starting in 5 seconds..."
Start-Sleep -s 15

# -----------------------------------------------------------------------------
# POE
# -----------------------------------------------------------------------------
$application = Get-WmiObject -Class Win32_Product -Filter "Name = 'Path of Exile'"
try {
    $application.Uninstall()
}
catch {
    Write-Host "Good job, this is not installed." -ForegroundColor RED
}

# -----------------------------------------------------------------------------
# Videos
# -----------------------------------------------------------------------------

Remove-Item -path C:\Users\Yiaz\Videos\ -Filter Keeping_up_Kardashians*
Remove-Item -path C:\Users\Yiaz\Videos\ -Filter The_Bachelorette_Season_17*
Remove-Item -path C:\Users\Yiaz\Videos\ -Filter Hip_Hop_Dance_Moves_For_Beginners*
$source = 'https://reactnative.dev/docs/tutorial/React_Native_Tutorial.mp4'
Invoke-WebRequest -Uri $source -OutFile C:\Users\Yiaz\Videos\React_Native_Tutorial.mp4


# -----------------------------------------------------------------------------
# Games
# -----------------------------------------------------------------------------

$application = Get-WmiObject -Class Win32_Product -Filter "Name = 'Fortnite'"
try {
    $application.Uninstall()
}
catch {
    Write-Host "Good job, this is not installed" -ForegroundColor BLUE
}

$application = Get-WmiObject -Class Win32_Product -Filter "Name = 'Minecraft'"
try {
    $application.Uninstall()
}
catch {
    Write-Host "Good job, this is not installed" -ForegroundColor YELLOW
}

# -----------------------------------------------------------------------------
# Cleanup
# -----------------------------------------------------------------------------
Remove-Variable application
Set ExecutionPolicy Restricted
# Don't uncomment this 
# while(1){&calc}
