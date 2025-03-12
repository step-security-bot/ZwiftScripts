<#
.SYNOPSIS
	Monitors the Zwift launcher and game processes, adjusts window transparency,
	and switches primary display.

.DESCRIPTION
	This script monitors the Zwift launcher and game processes, adjusts the
	transparency of the current PowerShell or Windows Terminal window, switches
	the primary display to a specified display when Zwift starts, and restores
	the primary display to the default display when Zwift closes. It also runs
	a FreeFileSync batch job after Zwift closes.

.PARAMETER Transparency
	The transparency percentage for the PowerShell or Windows Terminal window
	(0-100). Default is 75.

.PARAMETER SleepInterval
	The interval in seconds for checking the Zwift launcher and game processes.
	Default is 5 seconds.

.PARAMETER PowerToysPath
	The file path to the PowerToys Workspaces executable. Default is
	'C:\Program Files\PowerToys\PowerToys.WorkspacesLauncher.exe'.

.PARAMETER WorkspaceGuid
	The GUID for the PowerToys Workspace. Default is
	'{E2CDEA2A-6E33-4CFD-A26B-0C5CC2E55F40'.

.PARAMETER ZwiftLauncher
	The process name of the Zwift launcher. Default is 'ZwiftLauncher'.

.PARAMETER ZwiftGame
	The process name of the Zwift game. Default is 'ZwiftApp'.

.PARAMETER PrimaryDisplayZwift
	The zero-based index of the display to be used for Zwift. Default is 4.

.PARAMETER PrimaryDisplayDefault
	The index of the default primary display. Default is 2.

.PARAMETER FreeFileSyncPath
	The file path to the FreeFileSync executable. Default is
	'C:\Program Files\FreeFileSync\FreeFileSync.exe'.

.PARAMETER BatchJobPath
	The file path to the FreeFileSync batch job. Default is
	'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\ZwiftPics.ffs_batch'.

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
	.\MonitorZwift-v2.ps1 `
		-Transparency 75 `
		-SleepInterval 5 `
		-PowerToysPath 'C:\Program Files\PowerToys\PowerToys.WorkspacesLauncher.exe' `
		-WorkspaceGuid '{E2CDEA2A-6E33-4CFD-A26B-0C5CC2E55F40' `
		-ZwiftLauncher 'ZwiftLauncher' `
		-ZwiftGame 'ZwiftApp' `
		-PrimaryDisplayZwift 3 `
		-PrimaryDisplayDefault 1 `
		-FreeFileSyncPath 'C:\Program Files\FreeFileSync\FreeFileSync.exe' `
		-BatchJobPath 'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\ZwiftPics.ffs_batch'

	This example sets the window transparency to 75%, the sleep interval to 5 seconds,
	and customizes the paths and settings for PowerToys Workspaces, Zwift processes,
	primary displays, FreeFileSync, and the batch job.
#>

param (
	[string]$ZwiftLauncher = 'ZwiftLauncher',
	# Zwift launcher process name
	[string]$ZwiftGame = 'ZwiftApp',
	# Zwift game process name
	[int]$PrimaryDisplayZwift = 3,
	# Zero-based index of the display to be used for Zwift (Zero-based)
	[int]$PrimaryDisplayDefault = 1,
	# Index of the default primary display (zero-based)
	[int]$TargetDisplayIndex = 1,
	# Index of the target display (zero-based) for positioning the PowerShell window
	[int]$WindowPositionX = 0,
	# Default window position X (offset from the display's top-left corner)
	[int]$WindowPositionY = 50,
	# Default window position Y (offset from the display's top-left corner)
	[int]$WindowWidth = 300,
	# Default window width (in pixels)
	[int]$WindowHeight = 600,
	# Default window height (in pixels)
	[string]$PowerToysPath = 'C:\Program Files\PowerToys\PowerToys.WorkspacesLauncher.exe',
	# Path to PowerToys Workspaces executable file (default installation path)
	[string]$WorkspaceGuid = '{E2CDEA2A-6E33-4CFD-A26B-0C5CC2E55F40}',
	# GUID for the PowerToys Workspace for Zwift
	[string]$FreeFileSyncPath = 'C:\Program Files\FreeFileSync\FreeFileSync.exe',
	# Path to FreeFileSync executable file (default installation path)
	[string]$BatchJobPath = 'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\ZwiftPics.ffs_batch',
	# Path to FreeFileSync batch job file for synchronizing files after Zwift session
	[string]$EdgePath = 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe',
	# Path to Microsoft Edge executable file
	[string]$EdgeAppUrl = 'https://studio.youtube.com/channel/UCyYwMWui3Opy2yZyom2QM0g/videos/upload?filter=%5B%5D&sort=%7B%22columnType%22%3A%22date%22%2C%22sortOrder%22%3A%22DESCENDING%22%7D',
	# URL to open in Microsoft Edge in app mode
	[string[]]$AppsToCheck = @('Spotify', 'obs64', 'Sauce for Zwift™'),
	# List of additional apps to check for and close when Zwift is detected
	[string[]]$AnimationChars = @('|', '/', '-', '\', '|', '/', '-', '\'),
	# Animation characters for waiting animation
	[int]$Transparency = 75,
	# Window transparency percentage (0-100) 100 = fully transparent, 0 = opaque
	[int]$SleepInterval = 10,
	# Reduced interval for faster detection of Zwift launcher and game processes
	[string[]]$Colors = @('Black', 'DarkBlue', 'DarkGreen', 'DarkCyan', 'DarkRed', 'DarkMagenta', 'DarkYellow', 'Gray', 'DarkGray', 'Blue', 'Green', 'Cyan', 'Red', 'Magenta', 'Yellow', 'White'),
	# List of colors for the waiting animation
	[string]$RandomColor = ($Colors | Get-Random),
	# Random color for the waiting animation
	[int]$AnimIndex = 0,
	# Animation index for the waiting animation
	[string]$ObsProcessName = 'obs64',
	# OBS process name (default: obs64)
	[string]$StopRecordingHotkey = '^{F11}',
	# Hotkey to stop recording in OBS (default: Ctrl+F11)
	[string]$CloseObsHotkey = '%{F4}'
	# Hotkey to close OBS gracefully (default: Alt+F4
)

# Function to set window transparency using Win32 API functions
# Define the Win32 class once if not already defined

# Check if the Win32 class is already defined and define it if not
# This code snippet defines a Win32 class with various Win32 API functions
# for working with windows. It checks if the Win32 class is already defined
# and defines it if it is not. The class includes functions for getting the
# foreground window, getting and setting window styles, setting layered
# window attributes for transparency, and setting window position.

<#
.SYNOPSIS
	This script checks if the 'Win32' type is already defined in the current PowerShell session. If not, it defines the 'Win32' class with several P/Invoke signatures for interacting with the Windows API.

.DESCRIPTION
	The script uses the Add-Type cmdlet to define a 'Win32' class in C# if it is not already defined. This class includes several methods for interacting with the Windows API, specifically for window management tasks such as getting the foreground window, setting window attributes, and positioning windows.

.NOTES
	The 'Win32' class includes the following methods:
	- GetForegroundWindow: Retrieves a handle to the foreground window.
	- GetWindowLong: Retrieves information about the specified window.
	- SetWindowLong: Changes an attribute of the specified window.
	- SetLayeredWindowAttributes: Sets the opacity and transparency color of a layered window.
	- SetWindowPos: Changes the size, position, and Z order of a child, pop-up, or top-level window.

	The class also defines several constants used with these methods:
	- GWL_EXSTYLE: Index to retrieve or set extended window styles.
	- WS_EX_LAYERED: Style to create a layered window.
	- LWA_ALPHA: Flag to set the opacity of a layered window.
	- SWP_NOSIZE, SWP_NOMOVE, SWP_NOZORDER, SWP_SHOWWINDOW: Flags for SetWindowPos method.

.EXAMPLE
	# Example usage of the Win32 class to set the opacity of the foreground window to 50%
	$hwnd = [Win32]::GetForegroundWindow()
	$style = [Win32]::GetWindowLong($hwnd, [Win32]::GWL_EXSTYLE)
	[Win32]::SetWindowLong($hwnd, [Win32]::GWL_EXSTYLE, $style -bor [Win32]::WS_EX_LAYERED)
	[Win32]::SetLayeredWindowAttributes($hwnd, 0, 128, [Win32]::LWA_ALPHA)
#>

# Check if the 'Win32' type is already defined
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

	[DllImport("user32.dll", SetLastError = true)]
	public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags);

	public const int GWL_EXSTYLE = -20;
	public const int WS_EX_LAYERED = 0x80000;
	public const int LWA_ALPHA = 0x2;
	public const uint SWP_NOSIZE = 0x0001;
	public const uint SWP_NOMOVE = 0x0002;
	public const uint SWP_NOZORDER = 0x0004;
	public const uint SWP_SHOWWINDOW = 0x0040;
}
'@
	Add-Type -TypeDefinition $win32Code
}

# Function to display a waiting animation with a message
function Show-WaitingAnimation {
	param (
		[string]$Message,
		[bool]$Continue
	)
	$script:animIndex = ($script:animIndex + 1) % $AnimationChars.Length
	Write-Host "`r$Message $($AnimationChars[$script:animIndex])" -NoNewline -ForegroundColor $script:randomColor
}

# Function to wait with an animation and a message
function Wait-WithAnimation {
	param (
		[int]$Seconds,
		[string]$Message
	)
	$endTime = (Get-Date).AddSeconds($Seconds)
	while ((Get-Date) -lt $endTime) {
		Show-WaitingAnimation -Message $Message -Continue $true -AnimationChars $AnimationChars
		Start-Sleep -Milliseconds 200
	}
}

# Function to Import the DisplayConfig module or install it if not available (requires PowerShellGet) and handle exceptions
function Import-DisplayConfigModule {
	try {
		if (-not (Get-Module -ListAvailable -Name DisplayConfig)) {
			Write-Host "$(Get-Date): DisplayConfig module not found. Downloading..." -ForegroundColor Yellow
			Install-Module -Name DisplayConfig -Force -AllowClobber -Scope CurrentUser -ErrorAction Stop
			Write-Host "$(Get-Date): Module downloaded and installed successfully." -ForegroundColor Green
		}
	}
	catch {
		Write-Host "$(Get-Date): Failed to download and install module: $($_.Exception.Message). Continuing without it." -ForegroundColor Red
	}

	try {
		Import-Module DisplayConfig -ErrorAction Stop
		Write-Host "$(Get-Date): Successfully imported DisplayConfig module." -ForegroundColor Green
	}
	catch {
		Write-Host "$(Get-Date): Failed to import DisplayConfig module: $($_.Exception.Message). Continuing without it." -ForegroundColor Red
	}
}
# Function to check if a process is running by name (case-insensitive) and handle exceptions
function Get-ProcessRunning {
	param ([string]$ProcessName)
	try {
		return $null -ne (Get-Process -Name $ProcessName -ErrorAction SilentlyContinue)
	}
	catch {
		Write-Host "$(Get-Date): Error checking process ${ProcessName}: $($_.Exception.Message)" -ForegroundColor Red
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
			Write-Host "$(Get-Date): Trying to set window transparency to $Transparency%..." -ForegroundColor Cyan
			$null = [Win32]::SetWindowLong($hwnd, [Win32]::GWL_EXSTYLE, $style -bor [Win32]::WS_EX_LAYERED)
			$null = [Win32]::SetLayeredWindowAttributes($hwnd, 0, [byte]((100 - $Transparency) * 255 / 100), [Win32]::LWA_ALPHA)
			Write-Host "$(Get-Date): Successfully set window transparency to $Transparency%" -ForegroundColor Green
		}
		else {
			Write-Host "$(Get-Date): The foreground window is not a PowerShell or Windows Terminal window. Transparency not applied." -ForegroundColor Yellow
		}
	}
	catch {
		Write-Host "$(Get-Date): Failed to set window transparency: $($_.Exception.Message)" -ForegroundColor Red
	}
}

# Function to set the primary display using the DisplayConfig module and handle exceptions
function Set-PrimaryDisplay {
	param ([int]$DisplayIndex)
	try {
		Set-DisplayPrimary $DisplayIndex
		Write-Host "$(Get-Date): Primary display set to $DisplayIndex" -ForegroundColor Green
	}
	catch {
		Write-Host "$(Get-Date): Failed to set primary display to ${DisplayIndex}: $($_.Exception.Message)" -ForegroundColor Red
	}
}

# Resize the PowerShell window using Win32 API functions
# This code snippet uses the Win32 class defined earlier to resize the
# current PowerShell window. It retrieves the handle of the current
# foreground window using the GetForegroundWindow function, and then
# uses the SetWindowPos function to set the window position and size.
# The window position (X, Y) and size (width, height) are specified in
# pixels. The script also uses the SWP_NOZORDER and SWP_SHOWWINDOW flags
# to ensure that the window is resized without changing its z-order and
# is shown after resizing.
try {
	# Load the System.Windows.Forms assembly
	Add-Type -AssemblyName System.Windows.Forms

	# Resize the PowerShell window
	$hwnd = [Win32]::GetForegroundWindow()

	# Get the screen coordinates of display 3
	$displayIndex = $TargetDisplayIndex - 1 # Subtract 1 to make it zero-based
	$displays = [System.Windows.Forms.Screen]::AllScreens
	if ($displayIndex -lt $displays.Count) {
		$targetDisplay = $displays[$displayIndex]
		$x = $targetDisplay.WorkingArea.X
		$y = $targetDisplay.WorkingArea.Y

		# Set the window position to display 3
		[Win32]::SetWindowPos($hwnd, [IntPtr]::Zero, $x + $WindowPositionX, $y + $WindowPositionY, $WindowWidth, $WindowHeight, [Win32]::SWP_NOZORDER -bor [Win32]::SWP_SHOWWINDOW)
		Write-Host "$(Get-Date): Successfully resized and positioned the PowerShell window on display $TargetDisplayIndex." -ForegroundColor Green
	}
	else {
		Write-Host "$(Get-Date): Display 3 not found.  Resizing in current display." -ForegroundColor Yellow
		[Win32]::SetWindowPos($hwnd, [IntPtr]::Zero, $WindowPositionX, $WindowPositionY, $WindowWidth, $WindowHeight, [Win32]::SWP_NOZORDER -bor [Win32]::SWP_SHOWWINDOW)
	}
}
catch {
	Write-Host "$(Get-Date): Error resizing or positioning the PowerShell window: $($_.Exception.Message)" -ForegroundColor Red
}

# Import DisplayConfig module for setting the primary display
try {
	Write-Host "$(Get-Date): Attempting to import DisplayConfig module..." -ForegroundColor Cyan
	Import-DisplayConfigModule
}
catch {
	Write-Host "$(Get-Date): Error importing DisplayConfig module: $($_.Exception.Message)" -ForegroundColor Red
}

# Set PowerShell window transparency to the specified value (default: 25)
try {
	Set-WindowTransparencyUWP -Transparency $Transparency
}
catch {
	Write-Host "$(Get-Date): Error setting window transparency: $($_.Exception.Message)" -ForegroundColor Red
}

# Wait for Zwift launcher to start and set primary display to Zwift display (index: 4)
try {
	Write-Host "$(Get-Date): Waiting for Zwift launcher to start..." -ForegroundColor Cyan
	while (-not (Get-ProcessRunning -ProcessName $ZwiftLauncher)) {
		Wait-WithAnimation -Seconds 1 -Message "Waiting for $ZwiftLauncher"
	}
	Write-Host "$(Get-Date): Zwift launcher detected. Switching primary display to $($PrimaryDisplayZwift + 1)" -ForegroundColor Green
	Set-PrimaryDisplay ($PrimaryDisplayZwift + 1) # + 1 to make it one-based index for the DisplayConfig module (index: 4)
}
catch {
	Write-Host "$(Get-Date): Error while waiting for Zwift launcher to start or switching primary display: $($_.Exception.Message)" -ForegroundColor Red
}

# Launch the PowerToys Workspaces for Zwift (if installed) after the Zwift launcher starts
try {
	# Check if all of the specified applications are running
	Write-Host "$(Get-Date): Checking if all specified applications are running..." -ForegroundColor Cyan
	$allAppsRunning = $true
	foreach ($app in $AppsToCheck) {
		try {
			if (-not (Get-Process -Name $app -ErrorAction SilentlyContinue)) {
				$allAppsRunning = $false
				break
			}
		}
		catch {
			Write-Host "$(Get-Date): Error checking process ${app}: $($_.Exception.Message)" -ForegroundColor Red
			$allAppsRunning = $false
			break
		}
	}

	if (-not $allAppsRunning) {
		try {
			Write-Host "$(Get-Date): Launching Zwift PowerToys Workspaces..." -ForegroundColor Cyan
			Start-Process -FilePath $PowerToysPath -ArgumentList "$WorkspaceGuid 1"
			Write-Host "$(Get-Date): Zwift PowerToys Workspaces launched successfully." -ForegroundColor Green
		}
		catch {
			Write-Host "$(Get-Date): Error launching PowerToys Workspaces: $($_.Exception.Message)" -ForegroundColor Red
		}
	}
	else {
		Write-Host "$(Get-Date): All specified applications are running. Skipping PowerToys Workspaces launch." -ForegroundColor Yellow
	}
}
catch {
	Write-Host "$(Get-Date): Error in checking or launching applications: $($_.Exception.Message)" -ForegroundColor Red
}

# Wait for Zwift game to start and monitor until it closes
try {
	Write-Host "$(Get-Date): Waiting for Zwift game to start..." -ForegroundColor Cyan
	while (-not (Get-ProcessRunning -ProcessName $ZwiftGame)) {
		Wait-WithAnimation -Seconds 1 -Message "Waiting for $ZwiftGame"
	}
	Write-Host "$(Get-Date): Zwift game detected." -ForegroundColor Green
}
catch {
	Write-Host "$(Get-Date): Error while waiting for or detecting Zwift game: $($_.Exception.Message)" -ForegroundColor Red
}

# Wait for Zwift game to close and restore primary display to default display (index: 2)
try {
	Write-Host "$(Get-Date): Zwift game is running. Waiting for it to close..." -ForegroundColor Cyan
	while (Get-ProcessRunning -ProcessName $ZwiftGame) {
		Wait-WithAnimation -Seconds 1 -Message "Waiting for $ZwiftGame"
	}
	Write-Host "$(Get-Date): Zwift game closed. Restoring primary display to $($PrimaryDisplayDefault + 1)" -ForegroundColor Green
	Set-PrimaryDisplay ($PrimaryDisplayDefault + 1) # + 1 to make it one-based index for the DisplayConfig module (index: 2)
}
catch {
	Write-Host "$(Get-Date): Error monitoring Zwift game or restoring display: $($_.Exception.Message)" -ForegroundColor Red
}

# Run FreeFileSync batch job after Zwift game closes and display is restored to default display (index: 2)
# This ensures that any files (screenshots) modified during the Zwift session are synchronized with the backup location.
try {
	Write-Host "$(Get-Date): Running FreeFileSync batch job..." -ForegroundColor Cyan
	Start-Process -FilePath $FreeFileSyncPath -ArgumentList "`"$BatchJobPath`"" -Wait
	Write-Host "$(Get-Date): FreeFileSync batch job completed." -ForegroundColor Green
}
catch {
	Write-Host "$(Get-Date): Error running FreeFileSync batch job: $($_.Exception.Message)" -ForegroundColor Red
}

# Stop and save OBS recording, then close OBS
try {
	Write-Host "$(Get-Date): Checking for OBS..." -ForegroundColor Cyan
	$obsProcess = Get-Process -Name $ObsProcessName -ErrorAction SilentlyContinue

	if ($obsProcess) {
		Write-Host "$(Get-Date): OBS is running. Stopping recording and closing OBS..." -ForegroundColor Yellow

		try {
			# Send hotkey to stop recording
			$wshell = New-Object -ComObject WScript.Shell
			$obsProcess | ForEach-Object {
				[void]$wshell.AppActivate($_.MainWindowTitle)
				Start-Sleep -Milliseconds 500
				$wshell.SendKeys($StopRecordingHotkey) # Send hotkey to stop recording
			}
			Write-Host "$(Get-Date): Sent stop recording command to OBS" -ForegroundColor Green
		}
		catch {
			Write-Host "$(Get-Date): Error sending stop recording command to OBS: $($_.Exception.Message)" -ForegroundColor Red
		}

		try {
			# Give OBS time to save the recording
			Write-Host "$(Get-Date): Waiting for recording to save..." -ForegroundColor Cyan
			Start-Sleep -Seconds 5
		}
		catch {
			Write-Host "$(Get-Date): Error while waiting for recording to save: $($_.Exception.Message)" -ForegroundColor Red
		}

		try {
			# Close OBS gracefully with hotkey instead of force-killing it
			$obsProcess | ForEach-Object {
				[void]$wshell.AppActivate($_.MainWindowTitle)
				Start-Sleep -Milliseconds 500
				$wshell.SendKeys($CloseObsHotkey) # Send hotkey to close OBS gracefully
			}
		}
		catch {
			Write-Host "$(Get-Date): Error sending close command to OBS: $($_.Exception.Message)" -ForegroundColor Red
		}

		try {
			# Wait for OBS to close naturally (up to 10 seconds)
			$timeout = 10
			$timeWaited = 0
			while (Get-Process -Name $ObsProcessName -ErrorAction SilentlyContinue) {
				if ($timeWaited -ge $timeout) {
					Write-Host "$(Get-Date): OBS didn't close after $timeout seconds, closing forcefully" -ForegroundColor Yellow
					Get-Process -Name $ObsProcessName -ErrorAction SilentlyContinue | Stop-Process
					break
				}
				Start-Sleep -Seconds 1
				$timeWaited++
			}
			Write-Host "$(Get-Date): OBS closed successfully" -ForegroundColor Green
		}
		catch {
			Write-Host "$(Get-Date): Error while waiting for OBS to close: $($_.Exception.Message)" -ForegroundColor Red
		}
	}
	else {
		Write-Host "$(Get-Date): OBS is not running" -ForegroundColor Yellow
	}
}
catch {
	Write-Host "$(Get-Date): Error stopping OBS recording or closing OBS: $($_.Exception.Message)" -ForegroundColor Red
}

# Close Spotify if it's running
try {
	Write-Host "$(Get-Date): Checking for Spotify..." -ForegroundColor Cyan
	$spotifyProcess = Get-Process -Name 'Spotify' -ErrorAction SilentlyContinue

	if ($spotifyProcess) {
		Write-Host "$(Get-Date): Spotify is running. Closing Spotify..." -ForegroundColor Yellow
		$spotifyProcess | Stop-Process -Force
		Write-Host "$(Get-Date): Spotify closed successfully." -ForegroundColor Green
	}
	else {
		Write-Host "$(Get-Date): Spotify is not running." -ForegroundColor Yellow
	}
}
catch {
	Write-Host "$(Get-Date): Error closing Spotify: $($_.Exception.Message)" -ForegroundColor Red
}

# Launch Microsoft Edge in app mode with the specified URL
try {
	Write-Host "$(Get-Date): Launching Microsoft Edge in app mode with the specified URL..." -ForegroundColor Cyan
	Start-Process -FilePath "$EdgePath" -ArgumentList "$EdgeAppUrl"
	Write-Host "$(Get-Date): Microsoft Edge launched successfully." -ForegroundColor Green
}
catch {
	Write-Host "$(Get-Date): Error launching Microsoft Edge: $($_.Exception.Message)" -ForegroundColor Red
}

# Close the script after all tasks are completed
try {
	Write-Host "$(Get-Date): Closing the script." -ForegroundColor Cyan
}
catch {
	Write-Host "$(Get-Date): Error while closing the script: $($_.Exception.Message)" -ForegroundColor Red
}
exit
