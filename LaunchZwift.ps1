param (
	[string]$MonitorZwiftScriptPath = 'C:\Users\Nick\Dropbox\Cycling\ZwiftScripts\MonitorZwift-v2.ps1',
	[string]$ZwiftLauncherPath = 'C:\Program Files (x86)\Zwift\ZwiftLauncher.exe'
)

$zwiftAppRunning = $null -ne (Get-Process -Name 'ZwiftApp' -ErrorAction SilentlyContinue)
$zwiftLauncherRunning = $null -ne (Get-Process -Name 'ZwiftLauncher' -ErrorAction SilentlyContinue)

# Resolve paths
try {
    $MonitorZwiftScriptPath = Resolve-Path -LiteralPath $MonitorZwiftScriptPath -ErrorAction Stop
    $ZwiftLauncherPath = Resolve-Path -LiteralPath $ZwiftLauncherPath -ErrorAction Stop
}
catch {
    Write-Error "Failed to resolve paths: $($_.Exception.Message)"
    exit 1
}

# Resolve paths
try {
	$MonitorZwiftScriptPath = Resolve-Path -LiteralPath $MonitorZwiftScriptPath -ErrorAction Stop
	$ZwiftLauncherPath = Resolve-Path -LiteralPath $ZwiftLauncherPath -ErrorAction Stop
}
catch {
	Write-Error "Failed to resolve paths: $($_.Exception.Message)"
	exit 1
}

if ($zwiftAppRunning -or $zwiftLauncherRunning) {
	Write-Output "ZwiftApp.exe or ZwiftLauncher.exe is already running. Skipping start."
}
else {
	# Start Zwift Launcher
	if (Test-Path -LiteralPath $ZwiftLauncherPath) {
		try {
			$zwiftProcess = Start-Process -FilePath $ZwiftLauncherPath -PassThru -ErrorAction Stop
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
		$monitorProcess = Start-Process -FilePath 'powershell.exe' -ArgumentList "-File `"$MonitorZwiftScriptPath`"" -PassThru -ErrorAction Stop
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

if ($zwiftAppRunning -or $zwiftLauncherRunning) {
	Write-Output "ZwiftApp.exe or ZwiftLauncher.exe is already running. Skipping start."
}
else {
	# Start Zwift Launcher
	if (Test-Path -LiteralPath $ZwiftLauncherPath) {
		try {
			$zwiftProcess = Start-Process -FilePath $ZwiftLauncherPath -PassThru -ErrorAction Stop
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
        $monitorProcess = Start-Process -FilePath 'powershell.exe' -ArgumentList "-File `"$MonitorZwiftScriptPath`"" -PassThru -ErrorAction Stop
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
