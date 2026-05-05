Add-Type -AssemblyName System.Windows.Forms
$monitors = [System.Windows.Forms.Screen]::AllScreens

$count = $monitors.Count
Write-Host "Detected monitors: $count"

if ($count -gt 1) {
    $choice = Read-Host "Multiple monitors detected. Switch to extend mode? (y/n)"
    if ($choice -eq "y") {
        Start-Process "C:\path\to\your\DisplaySwitch.exe" -ArgumentList "/extend"
    }
} else {
    Write-Host "Only one monitor detected. Nothing to change."
}
