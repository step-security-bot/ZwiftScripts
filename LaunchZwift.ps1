<#
.SYNOPSIS
Launches the Zwift application and a monitoring script.

.DESCRIPTION
This script checks if the Zwift application or its launcher is already running.
If neither is running, it starts the Zwift Launcher and a specified monitoring script.
The paths to the Zwift Launcher and the monitoring script can be customized via parameters.

.PARAMETER MonitorZwiftScriptPath
Specifies the file path to the Zwift monitoring script.
Defaults to 'C:\Users\Nick\Dropbox\Cycling\ZwiftScripts\MonitorZwift-v2.ps1'.

.PARAMETER ZwiftLauncherPath
Specifies the file path to the Zwift Launcher executable.
Defaults to 'C:\Program Files (x86)\Zwift\ZwiftLauncher.exe'.

.NOTES
- The script resolves the provided paths to ensure they are valid.
- If the Zwift application or launcher is already running, the script skips starting them.
- If the paths to the Zwift Launcher or monitoring script are invalid, the script logs an error and exits.

.EXAMPLE
.\LaunchZwift.ps1
Launches the Zwift application and monitoring script using the default paths.

.EXAMPLE
.\LaunchZwift.ps1 -MonitorZwiftScriptPath "C:\CustomPath\MonitorZwift.ps1" -ZwiftLauncherPath "C:\CustomPath\ZwiftLauncher.exe"
Launches the Zwift application and monitoring script using custom paths.

#>
param (
  [string]$MonitorZwiftScriptPath = 'C:\Users\Nick\Dropbox\Cycling\ZwiftScripts\MonitorZwift-v2.ps1',
  [string]$ZwiftLauncherPath = 'C:\Program Files (x86)\Zwift\ZwiftLauncher.exe'
)

$zwiftAppRunning = $null -ne (Get-Process -Name 'ZwiftApp' -ErrorAction SilentlyContinue)
# $zwiftLauncherRunning = $null -ne (Get-Process -Name 'ZwiftLauncher' -ErrorAction SilentlyContinue)

# Resolve paths
try {
  $MonitorZwiftScriptPath = Resolve-Path -LiteralPath $MonitorZwiftScriptPath -ErrorAction Stop
  $ZwiftLauncherPath = Resolve-Path -LiteralPath $ZwiftLauncherPath -ErrorAction Stop
}
catch {
  Write-Error "Failed to resolve paths: $($_.Exception.Message)"
  exit 1
}

if ($zwiftAppRunning) {
  Write-Output 'ZwiftApp.exe is already running. Skipping ZwiftLauncher.exe start.'
}
else {
  # Start Zwift Launcher
  if (Test-Path -LiteralPath $ZwiftLauncherPath) {
    try {
      $zwiftProcess = Start-Process -FilePath $ZwiftLauncherPath -NoNewWindow -PassThru -ErrorAction Stop
      if ($zwiftProcess) {
        Write-Output "Zwift Launcher started successfully from path: $ZwiftLauncherPath"
      }
      else {
        Write-Error 'Zwift Launcher process did not start.'
      }
    }
    catch {
      Write-Error "Failed to start Zwift Launcher: $($_.Exception.Message)"
    }
  }
  else {
    Write-Error "Zwift Launcher path not found: $ZwiftLauncherPath"
  }
}

# Start Zwift Monitor Script
if (Test-Path -LiteralPath $MonitorZwiftScriptPath) {
  try {
    $monitorProcess = Start-Process -FilePath 'powershell.exe' -ArgumentList "-File `"$MonitorZwiftScriptPath`"" -NoNewWindow -PassThru -ErrorAction Stop
    if ($monitorProcess) {
      Write-Output "Zwift Monitor Script started successfully from path: $MonitorZwiftScriptPath"
    }
    else {
      Write-Error 'Zwift Monitor Script process did not start.'
    }
  }
  catch {
    Write-Error "Failed to start Zwift Monitor Script: $($_.Exception.Message)"
  }
}
else {
  Write-Error "Zwift Monitor Script path not found: $MonitorZwiftScriptPath"
}
