<#PSScriptInfo

.VERSION 1.7.5

.GUID 4296fcf1-a13d-4d31-afdc-bcbd4e05506d

.AUTHOR Nick2bad4u

.COMPANYNAME Personal Project

.COPYRIGHT © 2025 Nick. All rights reserved.

.TAGS Zwift, Automation, PowerShell, OBS, FileSync, Display Management, Edge, Spotify, Sauce for Zwift

.LICENSEURI https://opensource.org/licenses/MIT

.PROJECTURI https://github.com/Nick2bad4u/ZwiftScripts

.ICONURI https://www.google.com/s2/favicons?sz=256&domain=zwift.com

.EXTERNALMODULEDEPENDENCIES DisplayConfig

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES
- PowerToys: https://github.com/microsoft/PowerToys
- FreeFileSync: https://freefilesync.org/
- OBS Studio: https://obsproject.com/
- Sauce for Zwift: https://sauce.llc/
- Spotify: https://www.spotify.com/
- Microsoft Edge: https://www.microsoft.com/edge

.RELEASENOTES
- Initial release of MonitorZwift-v2.
- Automates Zwift session setup, monitoring, and teardown.
- Includes display management, OBS integration, file synchronization, and application handling.
- Added support for Microsoft Edge in app mode and Sauce for Zwift.

.PRIVATEDATA
# No private data included in this script.

#>

<#
.DESCRIPTION
### Main Script Function

This script performs the following tasks:

- **Window Management**:
	- Resizes and positions the PowerShell window.
	- Sets window transparency for the PowerShell window.
- **Path Resolution**:
	- Resolves paths for Zwift Launcher and Monitor Script.
- **Application Automation**:
	- Starts Zwift Launcher and monitors Zwift game processes.
	- Sets the primary display for Zwift and restores it after the session.
	- Launches PowerToys Workspaces for Zwift if required.
- **Zwift Game Monitoring**:
	- Waits for Zwift game to start, maximizes its window, and monitors until it closes.
- **Application Cleanup**:
	- Closes additional applications like Sauce for Zwift, OBS, and Spotify.
- **File Synchronization**:
	- Synchronizes Zwift-related files using FreeFileSync.
- **Browser Automation**:
	- Launches Microsoft Edge in app mode with specified URLs.
- **File Explorer Integration**:
	- Opens File Explorer for Zwift media and pictures directories.
- **Task Validation**:
	- Validates task completion and provides a review window before closing.

---

### Features

- **Display Management**:
	- Automatically sets the primary display for Zwift and restores it after the session.
- **Application Automation**:
	- Launches Zwift Launcher and monitors Zwift game processes.
	- Closes additional applications like Sauce for Zwift, OBS, and Spotify.
	- Launches PowerToys Workspaces for Zwift if required.
- **OBS Integration**:
	- Stops OBS recording using a configurable hotkey.
	- Closes OBS gracefully or forcefully if needed.
- **File Synchronization**:
	- Runs a FreeFileSync batch job to synchronize Zwift-related files after the session.
- **Browser Automation**:
	- Launches Microsoft Edge in app mode with specified URLs (e.g., YouTube Studio, Strava, Garmin Connect).
- **File Explorer Integration**:
	- Opens File Explorer for Zwift media and pictures directories.
- **Customizable Settings**:
	- Configurable display indices, window positions, and dimensions.
	- Adjustable transparency for the PowerShell window.
	- Customizable hotkeys for OBS recording and closing.
- **Task Validation**:
	- Tracks and validates the completion of all tasks, providing a summary at the end.
- **User-Friendly Animations**:
	- Includes waiting animations and countdown timers for a better user experience.

---

### Requirements

- **PowerShell**: Version 5.1 or later.
- **External Dependencies**:
	- DisplayConfig module (automatically installed if missing).
	- Applications like PowerToys, FreeFileSync, and OBS (optional but recommended).
- **Configuration**:
	- Ensure all paths and parameters are correctly configured before running the script.

---

### Examples

1. **Run with default settings**:
````powershell
	.\MonitorZwift-v2.ps1

2. **Run with custom Zwift Launcher path and display settings**:
	.\MonitorZwift-v2.ps1 -ZwiftLauncherPath "C:\Zwift\ZwiftLauncher.exe" -PrimaryDisplayZwift 2

3. **Run with custom window transparency and dimensions**:
	.\MonitorZwift-v2.ps1 -Transparency 50 -WindowWidth 400 -WindowHeight 800
	```
#>

<#
.SYNOPSIS
	A PowerShell script to automate the setup, monitoring, and teardown of a Zwift session, including managing displays, applications, and file synchronization.

.DESCRIPTION
	This script performs the following tasks:
	- Resizes and positions the PowerShell window.
	- Sets window transparency for the PowerShell window.
	- Resolves paths for Zwift Launcher and Monitor Script.
	- Starts Zwift Launcher and monitors Zwift game processes.
	- Sets the primary display for Zwift and restores it after the session.
	- Launches PowerToys Workspaces for Zwift if required.
	- Waits for Zwift game to start, maximizes its window, and monitors until it closes.
	- Closes additional applications like Sauce for Zwift, OBS, and Spotify.
	- Synchronizes Zwift-related files using FreeFileSync.
	- Launches Microsoft Edge in app mode with specified URLs.
	- Opens File Explorer for Zwift media and pictures directories.
	- Validates task completion and provides a review window before closing.

.PARAMETER ZwiftLauncherPath
	Path to the Zwift Launcher executable. Default: 'C:\Program Files (x86)\Zwift\ZwiftLauncher.exe'.

.PARAMETER MonitorZwiftScriptPath
	Path to the MonitorZwift script. Default: 'C:\Users\Nick\Dropbox\Cycling\ZwiftScripts\MonitorZwift-v2.ps1'.

.PARAMETER ZwiftLauncher
	Process name of the Zwift Launcher. Default: 'ZwiftLauncher'.

.PARAMETER ZwiftGame
	Process name of the Zwift game. Default: 'ZwiftApp'.

.PARAMETER ZwiftGameMaximizeDelay
	Delay in seconds before maximizing the Zwift game window. Default: 180.

.PARAMETER PrimaryDisplayZwift
	Zero-based index of the display to be used for Zwift. Default: 3.

.PARAMETER PrimaryDisplayDefault
	Zero-based index of the default primary display. Default: 1.

.PARAMETER TargetDisplayIndex
	Zero-based index of the target display for positioning the PowerShell window. Default: 1.

.PARAMETER WindowPositionX
	X-coordinate offset for the PowerShell window position. Default: 0.

.PARAMETER WindowPositionY
	Y-coordinate offset for the PowerShell window position. Default: 50.

.PARAMETER WindowWidth
	Width of the PowerShell window in pixels. Default: 300.

.PARAMETER WindowHeight
	Height of the PowerShell window in pixels. Default: 600.

.PARAMETER PowerToysPath
	Path to the PowerToys Workspaces executable. Default: 'C:\Program Files\PowerToys\PowerToys.WorkspacesLauncher.exe'.

.PARAMETER WorkspaceGuid
	GUID for the PowerToys Workspace for Zwift. Default: '{E2CDEA2A-6E33-4CFD-A26B-0C5CC2E55F40}'.

.PARAMETER FreeFileSyncPath
	Path to the FreeFileSync executable. Default: 'C:\Program Files\FreeFileSync\FreeFileSync.exe'.

.PARAMETER BatchJobPath
	Path to the FreeFileSync batch job file for synchronizing files. Default: 'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\ZwiftPics.ffs_batch'.

.PARAMETER ZwiftMediaPath
	Path to the Zwift media directory. Default: 'C:\Users\Nick\Dropbox\Cycling\ZwiftMedia'.

.PARAMETER ZwiftPicturesPath
	Path to the Zwift pictures directory. Default: 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift'.

.PARAMETER EdgePath
	Path to the Microsoft Edge executable. Default: 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'.

.PARAMETER EdgeUrl1
	URL to open in Microsoft Edge (YouTube Studio). Default: YouTube Studio upload page.

.PARAMETER EdgeUrl2
	URL to open in Microsoft Edge (Strava). Default: Strava training page.

.PARAMETER EdgeUrl3
	URL to open in Microsoft Edge (Garmin Connect). Default: Garmin Connect home page.

.PARAMETER AppsToCheck
	List of additional applications to check and close when Zwift is detected. Default: @('Spotify', 'obs64', 'Sauce for Zwift').

.PARAMETER AnimationChars
	Characters used for the waiting animation. Default: @('|', '/', '-', '\', '|', '/', '-', '\').

.PARAMETER Transparency
	Transparency percentage for the PowerShell window (0-100). Default: 75.

.PARAMETER SleepInterval
	Interval in seconds for detecting Zwift processes. Default: 10.

.PARAMETER Colors
	List of colors for the waiting animation. Default: Various console colors.

.PARAMETER randomColor
	Random color selected for the waiting animation.

.PARAMETER AnimIndex
	Index for the waiting animation.

.PARAMETER ObsProcessName
	Process name of OBS. Default: 'obs64'.

.PARAMETER StopRecordingHotkey
	Hotkey to stop recording in OBS. Default: '^{F11}' (Ctrl+F11).

.PARAMETER CloseObsHotkey
	Hotkey to close OBS gracefully. Default: '%{F4}' (Alt+F4).

.PARAMETER tasksCompleted
	List of tasks to track completion status.

.PARAMETER remainingTimeinHours
	Remaining time in hours for the script to remain open for review. Default: 3.

.PARAMETER remainingTimeinMinutes
	Remaining time in minutes for the script to remain open for review. Default: 180.
	Must be manually uncommented if used.

.PARAMETER remainingTimeinSeconds
	Remaining time in seconds for the script to remain open for review. Default: 10800.
	Must be manually uncommented if used.

.NOTES
	- Requires PowerShell 5.1 or later.
	- Some features depend on external modules like DisplayConfig and applications like PowerToys, FreeFileSync, and OBS.
	- Ensure all paths and parameters are correctly configured before running the script.

.EXAMPLE
	.\MonitorZwift-v2.ps1 -ZwiftLauncherPath "C:\Zwift\ZwiftLauncher.exe" -PrimaryDisplayZwift 2

	Runs the script with a custom Zwift Launcher path and sets display 2 as the primary display for Zwift.

.EXAMPLE
	.\MonitorZwift-v2.ps1 -Transparency 50 -WindowWidth 400 -WindowHeight 800

	Runs the script with 50% window transparency and custom window dimensions.

#>
param (
	[string]$ZwiftLauncherPath = 'C:\Program Files (x86)\Zwift\ZwiftLauncher.exe',
	[string]$MonitorZwiftScriptPath = 'C:\Users\Nick\Dropbox\Cycling\ZwiftScripts\MonitorZwift-v2.ps1',
	[string]$ZwiftLauncher = 'ZwiftLauncher',
	# Zwift launcher process name
	[string]$ZwiftGame = 'ZwiftApp',
	# Zwift game process name
	[int]$ZwiftGameMaximizeDelay = 180,
	# Delay before maximizing the Zwift game window (in seconds)
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
	[string]$ZwiftMediaPath = 'C:\Users\Nick\Dropbox\Cycling\ZwiftMedia',
	[string]$ZwiftPicturesPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift',
	[string]$EdgePath = 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe',
	# Path to Microsoft Edge executable file
	[string]$EdgeUrl1 = 'https://studio.youtube.com/channel/UCyYwMWui3Opy2yZyom2QM0g/videos/upload?filter=%5B%5D&sort=%7B%22columnType%22%3A%22date%22%2C%22sortOrder%22%3A%22DESCENDING%22%7D',
	# URL to open in Microsoft Edge in app mode (YouTube Studio) Opens Edge URL 1
	[string]$EdgeUrl2 = 'https://www.strava.com/athlete/training',
	# URL to open in Microsoft Edge in app mode (Strava) Opens Edge URL 2
	[string]$EdgeUrl3 = 'https://connect.garmin.com/modern/home',
	# URL to open in Microsoft Edge in app mode (Garmin Connect) Opens Edge URL 3
	[string[]]$AppsToCheck = @('Spotify', 'obs64', 'Sauce for Zwift'),
	# List of additional apps to check for and close when Zwift is detected
	[string[]]$AnimationChars = @('|', '/', '-', '\', '|', '/', '-', '\'),
	# Animation characters for waiting animation
	[int]$Transparency = 75,
	# Window transparency percentage (0-100) 100 = fully transparent, 0 = opaque
	[int]$SleepInterval = 10,
	# Reduced interval for faster detection of Zwift launcher and game processes
	[string[]]$Colors = @('Black', 'DarkBlue', 'DarkGreen', 'DarkCyan', 'DarkRed', 'DarkMagenta', 'DarkYellow', 'Gray', 'DarkGray', 'Blue', 'Green', 'Cyan', 'Red', 'Magenta', 'Yellow', 'White'),
	# List of colors for the waiting animation
	[string]$randomColor = ($Colors | Get-Random),
	# Random color for the waiting animation
	[int]$AnimIndex = 0,
	# Animation index for the waiting animation
	[string]$ObsProcessName = 'obs64',
	# OBS process name (default: obs64)
	[string]$StopRecordingHotkey = '^{F11}',
	# Hotkey to stop recording in OBS (default: Ctrl+F11)
	[string]$CloseObsHotkey = '%{F4}',
	# Hotkey to close OBS gracefully (default: Alt+F4)
	[string[]]$tasksCompleted = @(
		'Resized and positioned PowerShell window',
		'Imported DisplayConfig module',
		'Set Window Transparency',
		'Zwift Launcher path resolved',
		'ZwiftApp already running or Zwift Launcher started',
		'Zwift launcher running',
		'Primary display set for Zwift',
		'PowerToys Workspaces launched or skipped',
		'Zwift game started',
		'Zwift game window maximized',
		'Zwift game closed',
		'Sauce for Zwift closed or skipped',
		'Primary display restored',
		'FreeFileSync batch job completed',
		'OBS recording stopped',
		'OBS closed',
		'Spotify closed',
		'Microsoft Edge launched',
		'Opened File Explorer for ZwiftMediaPath',
		'Opened File Explorer for ZwiftPicturesPath',
		'Window transparency reset to fully opaque'
	),
	[int]$remainingTimeinHours = 3
	# Remaining time in hours for the script to run before closing

	# Uncomment the following variables if you prefer to specify the remaining time in minutes or seconds
	# [int]$remainingTimeinMinutes = 180 # Time in minutes for the script to remain open for review
	# [int]$remainingTimeinSeconds = 10800 # Time in seconds for the script to remain open for review
	## If you uncomment any of the above lines, make sure to comment out the other two variables
)

# Initialize the global variable to track completed tasks
$global:completedTasks = @()

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

		[DllImport("user32.dll", SetLastError = true)]
		public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);

		public const int GWL_EXSTYLE = -20;
		public const int WS_EX_LAYERED = 0x80000;
		public const int LWA_ALPHA = 0x2;
		public const uint SWP_NOSIZE = 0x0001;
		public const uint SWP_NOMOVE = 0x0002;
		public const uint SWP_NOZORDER = 0x0004;
		public const uint SWP_SHOWWINDOW = 0x0040;
		public const int SW_MAXIMIZE = 3;
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
			# Ensure transparency value of 0 sets the window to fully opaque
			$opacity = if ($Transparency -eq 0) { 255 } else { [byte]((100 - $Transparency) * 255 / 100) }
			$null = [Win32]::SetLayeredWindowAttributes($hwnd, 0, $opacity, [Win32]::LWA_ALPHA)
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
		$global:completedTasks += 'Resized and positioned PowerShell window'
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
	$global:completedTasks += 'Imported DisplayConfig module'
}
catch {
	Write-Host "$(Get-Date): Error importing DisplayConfig module: $($_.Exception.Message)" -ForegroundColor Red
}

# Set PowerShell window transparency to the specified value (default: 25)
try {
	Set-WindowTransparencyUWP -Transparency $Transparency
	$global:completedTasks += 'Set Window Transparency'
}
catch {
	Write-Host "$(Get-Date): Error setting window transparency: $($_.Exception.Message)" -ForegroundColor Red
}

# Resolve paths for Zwift Launcher and Monitor Script
try {
	$MonitorZwiftScriptPath = Resolve-Path -LiteralPath $MonitorZwiftScriptPath -ErrorAction Stop
	$ZwiftLauncherPath = Resolve-Path -LiteralPath $ZwiftLauncherPath -ErrorAction Stop
	$global:completedTasks += 'Zwift Launcher path resolved'
}
catch {
	Write-Error "Failed to resolve paths: $($_.Exception.Message)"
	exit 1
}

# Check if Zwift is already running
$zwiftAppRunning = $null -ne (Get-Process -Name $ZwiftGame -ErrorAction SilentlyContinue)

if ($zwiftAppRunning) {
	Write-Output 'ZwiftApp.exe is already running. Skipping ZwiftLauncher.exe start.'
	$global:completedTasks += 'ZwiftApp already running or Zwift Launcher started'
}
else {
	# Start Zwift Launcher
	if (Test-Path -LiteralPath $ZwiftLauncherPath) {
		try {
			$zwiftProcess = Start-Process -FilePath $ZwiftLauncherPath -NoNewWindow -PassThru -ErrorAction Stop
			if ($zwiftProcess) {
				Write-Output "Zwift Launcher started successfully from path: $ZwiftLauncherPath"
				$global:completedTasks += 'ZwiftApp already running or Zwift Launcher started'
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

# Wait for Zwift launcher to start and set primary display to Zwift display (index: 4)
try {
	Write-Host "$(Get-Date): Waiting for Zwift launcher to start..." -ForegroundColor Cyan
	while (-not (Get-ProcessRunning -ProcessName $ZwiftLauncher)) {
		Wait-WithAnimation -Seconds 1 -Message "Waiting for $ZwiftLauncher"
	}
	Write-Host "$(Get-Date): Zwift launcher detected. Switching primary display to $($PrimaryDisplayZwift + 1)" -ForegroundColor Green
	Set-PrimaryDisplay ($PrimaryDisplayZwift + 1) # + 1 to make it one-based index for the DisplayConfig module (index: 4)
	$global:completedTasks += 'Zwift launcher running'
	$global:completedTasks += 'Primary display set for Zwift'
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
			$global:completedTasks += 'PowerToys Workspaces launched or skipped'
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
	$global:completedTasks += 'Zwift game started'
}
catch {
	Write-Host "$(Get-Date): Error while waiting for or detecting Zwift game: $($_.Exception.Message)" -ForegroundColor Red
}

# Wait for a specified amount of time before maximizing the Zwift game window
try {
	Write-Host "$(Get-Date): Waiting for $ZwiftGameMaximizeDelay seconds before maximizing the Zwift game window..." -ForegroundColor Cyan

	# Countdown animation
	for ($i = $ZwiftGameMaximizeDelay; $i -gt 0; $i--) {
		Write-Host "`rWaiting: $i seconds remaining..." -NoNewline -ForegroundColor Yellow
		Start-Sleep -Seconds 1
	}
	Write-Host "`rCountdown complete. Proceeding..." -ForegroundColor Green

	$zwiftProcess = Get-Process -Name $ZwiftGame -ErrorAction SilentlyContinue
	if ($zwiftProcess) {
		# Get the main window handle of the Zwift game process
		$zwiftHwnd = $zwiftProcess.MainWindowHandle
		Write-Host "Zwift MainWindowHandle: $zwiftHwnd"
		# If the handle is valid, maximize the window
		if ($zwiftHwnd -ne [IntPtr]::Zero) {
			[Win32]::ShowWindow($zwiftHwnd, [Win32]::SW_MAXIMIZE)
			Write-Host "$(Get-Date): Zwift game window maximized successfully." -ForegroundColor Green
			$global:completedTasks += 'Zwift game window maximized'
		}
		else {
			Write-Host "$(Get-Date): Zwift game window handle not found. Unable to maximize." -ForegroundColor Yellow
		}
	}
	else {
		Write-Host "$(Get-Date): Zwift game process not found. Unable to maximize window." -ForegroundColor Yellow
	}
}
catch {
	Write-Host "$(Get-Date): Error maximizing Zwift game window: $($_.Exception.Message)" -ForegroundColor Red
}

# Step 1: Wait for Zwift game to close
try {
	Write-Host "$(Get-Date): Zwift game is running. Waiting for it to close..." -ForegroundColor Cyan
	while (Get-ProcessRunning -ProcessName $ZwiftGame) {
		Wait-WithAnimation -Seconds 1 -Message "Waiting for $ZwiftGame"
	}
	Write-Host "$(Get-Date): Zwift game closed." -ForegroundColor Green
	$global:completedTasks += 'Zwift game closed'
}
catch {
	Write-Host "$(Get-Date): Error monitoring Zwift game: $($_.Exception.Message)" -ForegroundColor Red
}

# Ensure Sauce for Zwift process is closed before restoring primary display
try {
	Write-Host "$(Get-Date): Checking for Sauce for Zwift process..." -ForegroundColor Cyan
	$sauceProcess = Get-Process | Where-Object { $_.Name -like 'Sauce for Zwift*' }

	if ($sauceProcess) {
		Write-Host "$(Get-Date): Sauce for Zwift is running. Closing it..." -ForegroundColor Yellow
		$sauceProcess | Stop-Process -Force
		Write-Host "$(Get-Date): Sauce for Zwift closed successfully." -ForegroundColor Green
		$global:completedTasks += 'Sauce for Zwift closed or skipped'
	}
	else {
		Write-Host "$(Get-Date): Sauce for Zwift is not running. Skipping..." -ForegroundColor Yellow
		$global:completedTasks += 'Sauce for Zwift closed or skipped'
	}
}
catch {
	Write-Host "$(Get-Date): Error closing Sauce for Zwift: $($_.Exception.Message)" -ForegroundColor Red
}

# Step 3: Restore primary display to default display
try {
	Write-Host "$(Get-Date): Restoring primary display to $($PrimaryDisplayDefault + 1)..." -ForegroundColor Cyan
	Set-PrimaryDisplay ($PrimaryDisplayDefault + 1) # + 1 to make it one-based index for the DisplayConfig module (index: 2)
	Write-Host "$(Get-Date): Primary display restored to $($PrimaryDisplayDefault + 1)." -ForegroundColor Green
	$global:completedTasks += 'Primary display restored'
}
catch {
	Write-Host "$(Get-Date): Error restoring primary display: $($_.Exception.Message)" -ForegroundColor Red
}

# Run FreeFileSync batch job after Zwift game closes and display is restored to default display (index: 2)
# This ensures that any files (screenshots) modified during the Zwift session are synchronized with the backup location.
try {
	Write-Host "$(Get-Date): Running FreeFileSync batch job..." -ForegroundColor Cyan
	Start-Process -FilePath $FreeFileSyncPath -ArgumentList "`"$BatchJobPath`"" -Wait
	Write-Host "$(Get-Date): FreeFileSync batch job completed." -ForegroundColor Green
	$global:completedTasks += 'FreeFileSync batch job completed'
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
				try {
					[void]$wshell.AppActivate($_.MainWindowTitle)
					Start-Sleep -Milliseconds 500
					$wshell.SendKeys($StopRecordingHotkey) # Send hotkey to stop recording
				}
				catch {
					Write-Host "$(Get-Date): Error activating OBS window or sending stop recording hotkey: $($_.Exception.Message)" -ForegroundColor Red
				}
			}
			Write-Host "$(Get-Date): Sent stop recording command to OBS" -ForegroundColor Green
		}
		catch {
			Write-Host "$(Get-Date): Error initializing WScript.Shell or sending stop recording command: $($_.Exception.Message)" -ForegroundColor Red
		}

		try {
			# Give OBS time to save the recording
			Write-Host "$(Get-Date): Waiting for recording to save..." -ForegroundColor Cyan
			Wait-WithAnimation -Seconds 5 -Message 'Saving recording...'
		}
		catch {
			Write-Host "$(Get-Date): Error while waiting for recording to save: $($_.Exception.Message)" -ForegroundColor Red
		}

		try {
			# Close OBS gracefully with hotkey instead of force-killing it
			$obsProcess | ForEach-Object {
				try {
					# Check if the OBS window is already active
					if ($_.MainWindowTitle -and $wshell.AppActivate($_.MainWindowTitle)) {
						Write-Host "$(Get-Date): OBS window is already active: $($_.MainWindowTitle)" -ForegroundColor Yellow
					}
					else {
						# Attempt to activate the OBS window
						if ($_.MainWindowTitle) {
							$activated = $wshell.AppActivate($_.MainWindowTitle)
							if ($activated) {
								Write-Host "$(Get-Date): Activated OBS window: $($_.MainWindowTitle)" -ForegroundColor Green
								Wait-WithAnimation -Seconds 2 -Message 'Activating OBS Window...'
							}
							else {
								Write-Host "$(Get-Date): Failed to activate OBS window: $($_.MainWindowTitle)" -ForegroundColor Yellow
							}
						}
						else {
							Write-Host "$(Get-Date): OBS process has no MainWindowTitle. Skipping activation." -ForegroundColor Yellow
						}
					}

					# Send the hotkey to close OBS
					$wshell.SendKeys($CloseObsHotkey)
					Write-Host "$(Get-Date): Sent close hotkey to OBS window: $($_.MainWindowTitle)" -ForegroundColor Green
					$global:completedTasks += 'OBS recording stopped'

				}
				catch {
					Write-Host "$(Get-Date): Error activating OBS window or sending close hotkey: $($_.Exception.Message)" -ForegroundColor Red
				}
			}
		}
		catch {
			Write-Host "$(Get-Date): Error initializing WScript.Shell or sending close command to OBS: $($_.Exception.Message)" -ForegroundColor Red
		}

		try {
			# Wait for OBS to close naturally (up to 10 seconds)
			$timeout = 10
			Write-Host "$(Get-Date): Waiting for OBS to close..." -ForegroundColor Cyan
			Wait-WithAnimation -Seconds $timeout -Message 'Waiting for OBS to close'

			if (Get-Process -Name $ObsProcessName -ErrorAction SilentlyContinue) {
				Write-Host "$(Get-Date): OBS didn't close after $timeout seconds, closing forcefully" -ForegroundColor Yellow
				try {
					Get-Process -Name $ObsProcessName -ErrorAction SilentlyContinue | Stop-Process
				}
				catch {
					Write-Host "$(Get-Date): Error forcefully closing OBS: $($_.Exception.Message)" -ForegroundColor Red
				}
			}
			else {
				Write-Host "$(Get-Date): OBS closed successfully" -ForegroundColor Green
				$global:completedTasks += 'OBS closed'
			}
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
		$global:completedTasks += 'Spotify closed'
	}
	else {
		Write-Host "$(Get-Date): Spotify is not running." -ForegroundColor Yellow
	}
}
catch {
	Write-Host "$(Get-Date): Error closing Spotify: $($_.Exception.Message)" -ForegroundColor Red
}

# Launch Microsoft Edge in app mode with the specified URLs
try {
	Write-Host "$(Get-Date): Launching Microsoft Edge in app mode with the specified URLs..." -ForegroundColor Cyan
	Start-Process -FilePath "$EdgePath" -ArgumentList @("$EdgeUrl1", "$EdgeUrl2", "$EdgeUrl3")
	Write-Host "$(Get-Date): Microsoft Edge launched successfully with the specified URLs." -ForegroundColor Green
	$global:completedTasks += 'Microsoft Edge launched'
}
catch {
	Write-Host "$(Get-Date): Error launching Microsoft Edge: $($_.Exception.Message)" -ForegroundColor Red
}

# Open File Explorer with two separate windows for the specified directories
try {
	Write-Host "$(Get-Date): Opening File Explorer with specified directories..." -ForegroundColor Cyan
	if (Test-Path -Path $ZwiftMediaPath) {
		Start-Process -FilePath 'explorer.exe' -ArgumentList "`"$ZwiftMediaPath`""
		$global:completedTasks += 'Opened File Explorer for ZwiftMediaPath'
	}
	else {
		Write-Host "$(Get-Date): Path $ZwiftMediaPath does not exist. Skipping opening File Explorer for this path." -ForegroundColor Yellow
	}

	if (Test-Path -Path $ZwiftPicturesPath) {
		Start-Process -FilePath 'explorer.exe' -ArgumentList "`"$ZwiftPicturesPath`""
		$global:completedTasks += 'Opened File Explorer for ZwiftPicturesPath'
	}
	else {
		Write-Host "$(Get-Date): Path $ZwiftPicturesPath does not exist. Skipping the opening of File Explorer for this path." -ForegroundColor Yellow
	}

	$openedPaths = @()
	if (Test-Path -Path $ZwiftMediaPath) {
		$openedPaths += $ZwiftMediaPath
	}
	if (Test-Path -Path $ZwiftPicturesPath) {
		$openedPaths += $ZwiftPicturesPath
	}
	if ($openedPaths.Count -gt 0) {
		Write-Host "$(Get-Date): File Explorer opened successfully with the following directories: $($openedPaths -join ', ')." -ForegroundColor Green
	}
	else {
		Write-Host "$(Get-Date): No directories were opened as none of the specified paths exist." -ForegroundColor Yellow
	}
}
catch {
	Write-Host "$(Get-Date): Error opening File Explorer: $($_.Exception.Message)" -ForegroundColor Red
}

try {
	Set-WindowTransparencyUWP -Transparency 0
	Write-Host "$(Get-Date): Window transparency reset to fully opaque." -ForegroundColor Green
	$global:completedTasks += 'Window transparency reset to fully opaque'
}
catch {
	Write-Host "$(Get-Date): Error resetting window transparency: $($_.Exception.Message)" -ForegroundColor Red
	Write-Host "$(Get-Date): Attempting fallback by resetting transparency using default Win32 API..." -ForegroundColor Yellow
	try {
		$hwnd = [Win32]::GetForegroundWindow()
		$style = [Win32]::GetWindowLong($hwnd, [Win32]::GWL_EXSTYLE)
		[Win32]::SetWindowLong($hwnd, [Win32]::GWL_EXSTYLE, $style -bor [Win32]::WS_EX_LAYERED)
		[Win32]::SetLayeredWindowAttributes($hwnd, 0, 255, [Win32]::LWA_ALPHA)
		Write-Host "$(Get-Date): Fallback succeeded. Window transparency reset to fully opaque using Win32 API." -ForegroundColor Green
		$global:completedTasks += 'Window transparency reset to fully opaque'
	}
	catch {
		Write-Host "$(Get-Date): Fallback failed: $($_.Exception.Message). Continuing script execution regardless." -ForegroundColor Red
	}
}

# Validate that all required tasks have been completed successfully
try {
	try {
		$tasksFailed = $tasksCompleted | Where-Object { $_ -notin $global:completedTasks }

		if ($tasksFailed.Count -eq 0) {
			Write-Host "$(Get-Date): All tasks completed successfully." -ForegroundColor Green
		}
		else {
			Write-Host "$(Get-Date): The following tasks failed or were not completed:" -ForegroundColor Red
			$tasksFailed | ForEach-Object { Write-Host "- $_" -ForegroundColor Red }
		}
	}
	catch {
		Write-Host "$(Get-Date): Error during task validation: $($_.Exception.Message)" -ForegroundColor Red
	}

	try {
		# Calculate the remaining time in seconds based on the provided input
		if ($null -ne $remainingTimeinHours) {
			$remainingTime = $remainingTimeinHours * 3600
		}
		elseif ($null -ne $remainingTimeinMinutes) {
			$remainingTime = $remainingTimeinMinutes * 60
		}
		elseif ($null -ne $remainingTimeinSeconds) {
			$remainingTime = $remainingTimeinSeconds
		}
		else {
			Write-Host "$(Get-Date): No valid remaining time parameter provided. Exiting script." -ForegroundColor Red
			exit
		}
	}
	catch {
		Write-Host "$(Get-Date): Error calculating remaining time: $($_.Exception.Message)" -ForegroundColor Red
		exit
	}

	try {
		Write-Host "$(Get-Date): Script execution completed. The window will remain open for review for $([TimeSpan]::FromSeconds($remainingTime).ToString('hh\:mm\:ss'))." -ForegroundColor Yellow
		# Store the original remaining time for accurate display
		$originalRemainingTime = $remainingTime
		$totalTime = $remainingTime

		# Countdown timer with a decreasing progress bar
		while ($remainingTime -gt 0) {
			try {
				# Check for any key press to stop the script
				if ([Console]::KeyAvailable) {
					Write-Host "`n$(Get-Date): Key press detected. Stopping the script." -ForegroundColor Yellow
					exit
				}

				$formattedTime = [TimeSpan]::FromSeconds($remainingTime).ToString('hh\:mm\:ss')
				$progress = [int]($remainingTime / $totalTime * 50) # Progress bar length (50 characters)
				$loadingBar = ('#' * $progress).PadRight(50, '-')
				Write-Host "`rTime remaining: $formattedTime [$loadingBar]" -NoNewline
				Wait-WithAnimation -Seconds 1 -Message "Time remaining: $formattedTime"
				$remainingTime--
			}
			catch {
				Write-Host "$(Get-Date): Error during countdown timer: $($_.Exception.Message)" -ForegroundColor Red
				break
			}
		}
		Write-Host "`n$(Get-Date): Script review time over. $([TimeSpan]::FromSeconds($originalRemainingTime).ToString('hh\:mm\:ss')) has passed since the script ended." -ForegroundColor Yellow
		Write-Host "$(Get-Date): Closing the script now." -ForegroundColor Yellow
		exit
	}
	catch {
		Write-Host "$(Get-Date): Error during script review countdown: $($_.Exception.Message)" -ForegroundColor Red
		exit
	}
}
catch {
	Write-Host "$(Get-Date): Unexpected error in the final validation and review process: $($_.Exception.Message)" -ForegroundColor Red
	exit
}
