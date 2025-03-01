<#
.SYNOPSIS
    Monitors the Zwift launcher and game processes, adjusts window transparency, and switches primary display.

.DESCRIPTION
    This script monitors the Zwift launcher and game processes, adjusts the transparency of the current PowerShell or Windows Terminal window, switches the primary display to a specified display when Zwift starts, and restores the primary display to the default display when Zwift closes. It also runs a FreeFileSync batch job after Zwift closes.

.PARAMETER Transparency
    The transparency percentage for the PowerShell or Windows Terminal window (0-100). Default is 75.

.PARAMETER SleepInterval
    The interval in seconds for checking the Zwift launcher and game processes. Default is 5 seconds.

.PARAMETER ZwiftLauncher
    The process name of the Zwift launcher. Default is 'ZwiftLauncher'.

.PARAMETER ZwiftGame
    The process name of the Zwift game. Default is 'ZwiftApp'.

.PARAMETER PrimaryDisplayZwift
    The zero-based index of the display to be used for Zwift. Default is 4.

.PARAMETER PrimaryDisplayDefault
    The index of the default primary display. Default is 2.

.PARAMETER FreeFileSyncPath
    The file path to the FreeFileSync executable. Default is 'C:\Program Files\FreeFileSync\FreeFileSync.exe'.

.PARAMETER BatchJobPath
    The file path to the FreeFileSync batch job. Default is 'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\ZwiftPics.ffs_batch'.

.FUNCTIONS
    Import-DisplayConfigModule
        Imports the DisplayConfig module or installs it if not available.

    Get-ProcessRunning
        Checks if a process is running by name (case-insensitive).

    Set-WindowTransparencyUWP
        Sets the transparency of the current PowerShell or Windows Terminal window.

    Set-PrimaryDisplay
        Sets the primary display using the DisplayConfig module.

.NOTES
    Author: Nick
    Date: 2025-03-01
		Version: 2.0
		Updated: 2025-03-01
		Tested on: Windows 11 Pro
		Requires: PowerShell 5.1 or later
		This script requires the DisplayConfig module and FreeFileSync to be installed.
		- DisplayConfig module: https://www.powershellgallery.com/packages/DisplayConfig
		- FreeFileSync: https://freefilesync.org/

.LINK
		Github Repo: https://github.com/Nick2bad4u/ZwiftScripts
		Open an issue: https://github.com/Nick2bad4u/ZwiftScripts/issues
.LINK
		Download the required modules and software:
		DisplayConfig module: https://www.powershellgallery.com/packages/DisplayConfig
		FreeFileSync: https://freefilesync.org/

.INPUTS
    None. You cannot pipe objects to this script.

.OUTPUTS
    None. This script does not produce any output objects.

.EXAMPLE
    .\MonitorZwift-v2.ps1 -Transparency 50 -SleepInterval 10

    This example sets the window transparency to 50% and the sleep interval to 10 seconds.

.EXAMPLE
    .\MonitorZwift-v2.ps1 -Transparency 75 -SleepInterval 5

    This example sets the window transparency to 75% (default) and the sleep interval to 5 seconds (default).

.EXAMPLE
    .\MonitorZwift-v2.ps1 -Transparency 25 -SleepInterval 15

    This example sets the window transparency to 25% and the sleep interval to 15 seconds.
#>

param (
	[int]$Transparency = 75, # Window transparency percentage (0-100) 100 = fully transparent, 0 = opaque
	[int]$SleepInterval = 10, # Reduced interval for faster detection of Zwift launcher and game processes
	[string]$ZwiftLauncher = 'ZwiftLauncher', # Zwift launcher process name
	[string]$ZwiftGame = 'ZwiftApp', # Zwift game process name
	[int]$PrimaryDisplayZwift = 4, # Zero-based index of the display to be used for Zwift
	[int]$PrimaryDisplayDefault = 2, # Index of the default primary display
	[string]$FreeFileSyncPath = 'C:\Program Files\FreeFileSync\FreeFileSync.exe',
	[string]$BatchJobPath = 'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\ZwiftPics.ffs_batch'
)

# Function to set window transparency using Win32 API functions
# Define the Win32 class once if not already defined
if (-not ([System.Management.Automation.PSTypeName]'Win32').Type) {
	$win32Code = @'
using System;
using System.Runtime.InteropServices;
public class Win32 {
	[DllImport("user32.dll", SetLastError = true)]
	public static extern IntPtr GetForegroundWindow();

	[DllImport("user32.dll", SetLastError = true)]
	public static extern int GetWindowLong(IntPtr hWnd, int nIndex);

	[DllImport("user32.dll")]
	public static extern int SetWindowLong(IntPtr hWnd, int nIndex, int dwNewLong);

	[DllImport("user32.dll", SetLastError = true)]
	[return: MarshalAs(UnmanagedType.Bool)]
	public static extern bool SetLayeredWindowAttributes(IntPtr hwnd, uint crKey, byte bAlpha, uint dwFlags);

	public const int GWL_EXSTYLE = -20;
	public const int WS_EX_LAYERED = 0x80000;
	public const int LWA_ALPHA = 0x2;
}
'@
	Add-Type -TypeDefinition $win32Code
}

# Import the DisplayConfig module or install it if not available (requires PowerShellGet) and handle exceptions
function Import-DisplayConfigModule {
	try {
		if (-not (Get-Module -ListAvailable -Name DisplayConfig)) {
			Write-Host "$(Get-Date): DisplayConfig module not found. Downloading..."
			Install-Module -Name DisplayConfig -Force -AllowClobber -Scope CurrentUser -ErrorAction Stop
			Write-Host "$(Get-Date): Module downloaded and installed successfully."
		}
	}
	catch {
		Write-Host "$(Get-Date): Failed to download and install module: $($_.Exception.Message). Continuing without it."
	}

	try {
		Import-Module DisplayConfig -ErrorAction Stop
		Write-Host "$(Get-Date): Successfully imported DisplayConfig module."
	}
	catch {
		Write-Host "$(Get-Date): Failed to import DisplayConfig module: $($_.Exception.Message). Continuing without it."
	}
}
# Function to check if a process is running by name (case-insensitive) and handle exceptions
function Get-ProcessRunning {
	param ([string]$ProcessName)
	try {
		return $null -ne (Get-Process -Name $ProcessName -ErrorAction SilentlyContinue)
	}
	catch {
		Write-Host "$(Get-Date): Error checking process ${ProcessName}: $($_.Exception.Message)"
		return $false
	}
}

# Variables for the current PowerShell window and process
$hwnd = [Win32]::GetForegroundWindow()
$process = Get-Process -Id ([System.Diagnostics.Process]::GetCurrentProcess().Id)
$processName = $process.ProcessName.ToLower()
$allowedProcesses = @('powershell', 'pwsh', 'windowsterminal', 'wt')
$style = [Win32]::GetWindowLong($hwnd, [Win32]::GWL_EXSTYLE)

# Ensure the transparency is applied only to the current PowerShell window or Windows Terminal
# Function to set window transparency using UWP API
function Set-WindowTransparencyUWP {
	param (
		[int]$Transparency # Set at the beginning of the script
	)
	try {
		if ($allowedProcesses -contains $processName) {
			[Win32]::SetWindowLong($hwnd, [Win32]::GWL_EXSTYLE, $style -bor [Win32]::WS_EX_LAYERED)
			[Win32]::SetLayeredWindowAttributes($hwnd, 0, [byte]((100 - $Transparency) * 255 / 100), [Win32]::LWA_ALPHA)
			Write-Host "$(Get-Date): Successfully set window transparency to $Transparency%"
		}
		else {
			Write-Host "$(Get-Date): The foreground window is not a PowerShell or Windows Terminal window. Transparency not applied."
		}
	}
	catch {
		Write-Host "$(Get-Date): Failed to set window transparency: $($_.Exception.Message)"
	}
}

# Function to set the primary display using the DisplayConfig module and handle exceptions
function Set-PrimaryDisplay {
	param ([int]$DisplayIndex)
	try {
		Set-DisplayPrimary $DisplayIndex
		Write-Host "$(Get-Date): Primary display set to $DisplayIndex"
	}
	catch {
		Write-Host "$(Get-Date): Failed to set primary display to ${DisplayIndex}: $($_.Exception.Message)"
	}
}

# Import DisplayConfig module for setting the primary display
try {
	Import-DisplayConfigModule
}
catch {
	Write-Host "$(Get-Date): Error importing DisplayConfig module: $($_.Exception.Message)"
}

# Set PowerShell window transparency to the specified value (default: 25)
try {
	Set-WindowTransparencyUWP -Transparency $Transparency
}
catch {
	Write-Host "$(Get-Date): Error setting window transparency: $($_.Exception.Message)"
}

try {
	Write-Host "$(Get-Date): Waiting for Zwift launcher to start..."
}
catch {
	Write-Host "$(Get-Date): Error while waiting for Zwift launcher to start: $($_.Exception.Message)"
}

# Wait for Zwift launcher to start and switch primary display to Zwift display (index: 4)
try {
	while (-not (Get-ProcessRunning -ProcessName $ZwiftLauncher)) {
		Start-Sleep -Seconds $SleepInterval
	}
	Write-Host "$(Get-Date): Zwift launcher detected. Switching primary display to $PrimaryDisplayZwift"
	Set-PrimaryDisplay $PrimaryDisplayZwift
}
catch {
	Write-Host "$(Get-Date): Error detecting Zwift launcher: $($_.Exception.Message)"
}

try {
	Write-Host "$(Get-Date): Waiting for Zwift game to start..."
}
catch {
	Write-Host "$(Get-Date): Error while waiting for Zwift game to start: $($_.Exception.Message)"
}

# Wait for Zwift game to start and monitor until it closes
try {
	while (-not (Get-ProcessRunning -ProcessName $ZwiftGame)) {
		Start-Sleep -Seconds $SleepInterval
	}
	Write-Host "$(Get-Date): Zwift game detected. Monitoring until it closes..."
}
catch {
	Write-Host "$(Get-Date): Error detecting Zwift game: $($_.Exception.Message)"
}

# Wait for Zwift game to close and restore primary display to default display (index: 2)
try {
	while (Get-ProcessRunning -ProcessName $ZwiftGame) {
		Start-Sleep -Seconds $SleepInterval
	}
	Write-Host "$(Get-Date): Zwift game closed. Restoring primary display to $PrimaryDisplayDefault"
	Set-PrimaryDisplay $PrimaryDisplayDefault
}
catch {
	Write-Host "$(Get-Date): Error monitoring Zwift game: $($_.Exception.Message)"
}

# Run FreeFileSync batch job after Zwift game closes and display is restored to default display (index: 2)
try {
	Write-Host "$(Get-Date): Running FreeFileSync batch job..."
	Start-Process -FilePath $FreeFileSyncPath -ArgumentList "`"$BatchJobPath`"" -Wait
	Write-Host "$(Get-Date): FreeFileSync batch job completed."
}
catch {
	Write-Host "$(Get-Date): Error running FreeFileSync batch job: $($_.Exception.Message)"
}

# Close the script after all tasks are completed
try {
	Write-Host "$(Get-Date): Closing the script."
}
catch {
	Write-Host "$(Get-Date): Error while closing the script: $($_.Exception.Message)"
}
exit
