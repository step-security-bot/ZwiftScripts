<#PSScriptInfo

.VERSION 1.9.1

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
- PowerToys (Recommended): https://github.com/microsoft/PowerToys
  Required for managing workspaces during Zwift sessions. If not installed, workspace management features will be unavailable.
- FreeFileSync (Mandatory): https://freefilesync.org/
  Required for synchronizing Zwift-related files.
- OBS Studio (Optional): https://obsproject.com/
  Used for recording and streaming Zwift sessions.
- Sauce for Zwift (Optional): https://sauce.llc/
  Provides additional metrics and overlays for Zwift.
- Spotify (Optional): https://www.spotify.com/
  Used for managing music playback during Zwift sessions.
- Microsoft Edge (Mandatory): https://www.microsoft.com/edge
  Ensure Microsoft Edge is installed and accessible before running the script.
  Required for launching Zwift-related web pages in app mode.

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
	Path to the PowerToys executable. Default: 'C:\Program Files\PowerToys\PowerToys.exe'.

.PARAMETER PowerToysAwakePath
	Path to the PowerToys Awake executable. Default: 'C:\Program Files\PowerToys\PowerToys.Awake.exe'.

.PARAMETER PowerToysWorkspacesPath
	Path to the PowerToys Workspaces executable. Default: 'C:\Program Files\PowerToys\PowerToys.WorkspacesLauncher.exe'.

.PARAMETER WorkspaceGuid
	GUID for the PowerToys Workspace for Zwift. Default: '{E2CDEA2A-6E33-4CFD-A26B-0C5CC2E55F40}'.

.PARAMETER FreeFileSyncPath
	Path to the FreeFileSync executable. Default: 'C:\Program Files\FreeFileSync\FreeFileSync.exe'.

.PARAMETER BatchJobPath
	Path to the FreeFileSync batch job file for synchronizing files. Default: 'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\ZwiftPics.ffs_batch'.

.PARAMETER BatchJobPath2
	Path to the second FreeFileSync batch job file for synchronizing recordings to NAS. Default: 'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\RecordingsToNas.ffs_batch'.

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

.PARAMETER remainingTime
	Remaining time in seconds for the script to remain open for review. Default: 10800.
	Must be manually uncommented if used.

.PARAMETER PowerToysAwakeTime
	Time in seconds for PowerToys Awake to keep the display awake. Default: 3600 seconds (1 hour).

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
[CmdletBinding()]
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
	[string]$PowerToysPath = 'C:\Program Files\PowerToys\PowerToys.exe',
	# Path to PowerToys executable file (default installation path)
	[string]$PowerToysAwakePath = 'C:\Program Files\PowerToys\PowerToys.Awake.exe',
	# Path to PowerToys Awake executable file (default installation path)
	[int]$PowerToysAwakeTime = $remainingTimeinHours * 3600,
	# Time in seconds for PowerToys Awake to keep the display awake (default: 3600 seconds = 1 hour)
	[string]$PowerToysWorkspacesPath = 'C:\Program Files\PowerToys\PowerToys.WorkspacesLauncher.exe',
	# Path to PowerToys Workspaces executable file (default installation path)
	[string]$WorkspaceGuid = '{E2CDEA2A-6E33-4CFD-A26B-0C5CC2E55F40}',
	# GUID for the PowerToys Workspace for Zwift
	[string]$FreeFileSyncPath = 'C:\Program Files\FreeFileSync\FreeFileSync.exe',
	# Path to FreeFileSync executable file (default installation path)
	[string]$BatchJobPath = 'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\ZwiftPics.ffs_batch',
	# Path to FreeFileSync batch job file for synchronizing files after Zwift session
	[string]$BatchJobPath2 = 'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\RecordingsToNas.ffs_batch',
	# Path to second FreeFileSync batch job file for synchronizing recordings to NAS
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
	[int]$remainingTimeinHours = 3
	# Remaining time in hours for the script to run before closing

	# Uncomment the following variables if you prefer to specify the remaining time in minutes or seconds
	# [int]$remainingTimeinMinutes = 180 # Time in minutes for the script to remain open for review
	# [int]$remainingTimeinSeconds = 10800 # Time in seconds for the script to remain open for review
	## If you uncomment any of the above lines, make sure to comment out the other two variables
)

# =============================
# Step 1: Define helper functions and Win32 API for window management.
# =============================

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

# Variables for the current PowerShell window and process
$hwnd = [Win32]::GetForegroundWindow()
$process = Get-Process -Id ([System.Diagnostics.Process]::GetCurrentProcess().Id)
$processName = $process.ProcessName.ToLower()
$allowedProcesses = @('powershell', 'pwsh', 'windowsterminal', 'wt')
$style = [Win32]::GetWindowLong($hwnd, [Win32]::GWL_EXSTYLE)

# Ensure the transparency is applied only to the current PowerShell window or Windows Terminal

# Initialize a hashtable to track completed tasks
$taskTracker = @{
	CompletedTasks = @()
}

# Function to add a completed task
<#+
.SYNOPSIS
		Adds a completed task to the tracker.
.DESCRIPTION
		This function adds a task name to the list of completed tasks in the tracker.
.PARAMETER Tracker
		The hashtable tracking completed tasks.
.PARAMETER TaskName
		The name of the task to add to the completed tasks list.
.EXAMPLE
		Add-CompletedTask -Tracker $taskTracker -TaskName "Task 1"
		Adds "Task 1" to the completed tasks list in the task tracker.
#>
function Add-CompletedTask {
	param (
		[hashtable]$Tracker,
		[string]$TaskName
	)
	$Tracker.CompletedTasks += $TaskName
}

# Function to check if a task is completed
<#+
.SYNOPSIS
	Checks if a task is completed.
.DESCRIPTION
	This function checks if a task name is present in the list of completed tasks in the tracker.
.PARAMETER Tracker
		The hashtable tracking completed tasks.
.PARAMETER TaskName
		The name of the task to check for completion.
.EXAMPLE
		Test-TaskCompletion -Tracker $taskTracker -TaskName "Task 1"
		Returns $true if "Task 1" is in the completed tasks list, otherwise $false.
#>
function Test-TaskCompletion {
	param (
		[hashtable]$Tracker,
		[string]$TaskName
	)
	return $TaskName -in $Tracker.CompletedTasks
}

# Function to get the list of completed tasks
<#+
.SYNOPSIS
	Returns the list of completed tasks.
.DESCRIPTION
	This function retrieves the list of completed tasks from the tracker.
.PARAMETER Tracker
		The hashtable tracking completed tasks.
.EXAMPLE
		Get-CompletedTasks -Tracker $taskTracker
		Returns the list of completed tasks from the task tracker.
#>
function Get-CompletedTasks {
	param (
		[hashtable]$Tracker
	)
	return $Tracker.CompletedTasks
}

# Function: Show-WaitingAnimation
<#+
.SYNOPSIS
    Displays a waiting animation with a message.
.DESCRIPTION
    This function shows a rotating animation (e.g., '|', '/', '-', '\') alongside a custom message.
.PARAMETER Message
    The message to display alongside the animation.
.PARAMETER Continue
    A boolean indicating whether to continue the animation.
.EXAMPLE
    Show-WaitingAnimation -Message "Loading..." -Continue $true
#>
# Function to display a waiting animation with a message
function Show-WaitingAnimation {
	param (
		[string]$Message,
		[bool]$Continue
	)
	$script:animIndex = ($script:animIndex + 1) % $AnimationChars.Length
	Write-Host "`r$Message $($AnimationChars[$script:animIndex])" -NoNewline -ForegroundColor $script:randomColor
}

# Function: Wait-WithAnimation
<#+
.SYNOPSIS
    Waits for a specified duration while displaying an animation.
.DESCRIPTION
    This function waits for a given number of seconds and displays a rotating animation with a custom message.
.PARAMETER Seconds
    The number of seconds to wait.
.PARAMETER Message
    The message to display alongside the animation.
.EXAMPLE
    Wait-WithAnimation -Seconds 5 -Message "Processing..."
#>
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

# Function: Import-DisplayConfigModule
<#+
.SYNOPSIS
    Imports the DisplayConfig module or installs it if not available.
.DESCRIPTION
    This function checks for the availability of the DisplayConfig module, installs it if missing, and imports it.
.EXAMPLE
    Import-DisplayConfigModule
#>
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
		Write-Error "$(Get-Date): Failed to download and install module: $($_.Exception.Message). Continuing without it."
	}

	try {
		Import-Module DisplayConfig -ErrorAction Stop
		Write-Host "$(Get-Date): Successfully imported DisplayConfig module." -ForegroundColor Green
	}
	catch {
		Write-Error "$(Get-Date): Failed to import DisplayConfig module: $($_.Exception.Message). Continuing without it."
	}
}

# Function: Get-ProcessRunning
<#+
.SYNOPSIS
    Checks if a process is running by name.
.DESCRIPTION
    This function checks if a process with the specified name is currently running.
.PARAMETER ProcessName
    The name of the process to check.
.EXAMPLE
    Get-ProcessRunning -ProcessName "notepad"
#>
# Function to check if a process is running by name (case-insensitive) and handle exceptions
function Get-ProcessRunning {
	param ([string]$ProcessName)
	try {
		return $null -ne (Get-Process -Name $ProcessName -ErrorAction SilentlyContinue)
	}
	catch {
		Write-Error "$(Get-Date): Error checking process ${ProcessName}: $($_.Exception.Message)"
		return $false
	}
}

# Function: Set-WindowTransparencyUWP
<#+
.SYNOPSIS
    Sets the transparency of the current PowerShell or Windows Terminal window.
.DESCRIPTION
    This function adjusts the transparency of the current window using the Win32 API.
.PARAMETER Transparency
    The transparency percentage (0-100) to apply to the window.
.EXAMPLE
    Set-WindowTransparencyUWP -Transparency 50
#>
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
		Write-Error "$(Get-Date): Failed to set window transparency: $($_.Exception.Message)"
	}
}

# Function: Set-PrimaryDisplay
<#+
.SYNOPSIS
    Sets the primary display to the specified index.
.DESCRIPTION
    This function uses the DisplayConfig module to set the primary display to the given index.
.PARAMETER DisplayIndex
    The zero-based index of the display to set as primary.
.EXAMPLE
    Set-PrimaryDisplay -DisplayIndex 2
#>
# Function to set the primary display using the DisplayConfig module and handle exceptions
function Set-PrimaryDisplay {
	param ([int]$DisplayIndex)
	try {
		Set-DisplayPrimary $DisplayIndex
		Write-Host "$(Get-Date): Primary display set to $DisplayIndex" -ForegroundColor Green
	}
	catch {
		Write-Error "$(Get-Date): Failed to set primary display to ${DisplayIndex}: $($_.Exception.Message)"
	}
}

# Function: Show-TaskCompletionSummary
<#+
.SYNOPSIS
Displays a summary of task completion status.

.DESCRIPTION
The Show-TaskCompletionSummary function outputs a summary of completed tasks in the order they were completed. It also highlights any tasks in the provided tasksCompleted list that were not completed.

.PARAMETER Tracker
A hashtable containing task tracking information, including a list of completed tasks.

.PARAMETER tasksCompleted
An additional collection of tasks to check for completion.

.EXAMPLE
Show-TaskCompletionSummary -Tracker $myTracker -tasksCompleted $recentlyCompleted

.NOTES
This function assumes the existence of a Get-CompletedTasks function that retrieves completed tasks from the provided tracker.
#>
function Show-TaskCompletionSummary {
	param (
		[hashtable]$Tracker,
		$tasksCompleted
	)
	try {
		# Only use the order in which tasks were completed
		$completedOrdered = $Tracker.CompletedTasks
		Write-Host "$(Get-Date): Task Completion Summary (in order completed):" -ForegroundColor Cyan
		foreach ($task in $completedOrdered) {
			Write-Host "- ${task}: Completed" -ForegroundColor Green
		}
		# Optionally, show any tasks in $tasksCompleted that were not completed (if needed)
		if ($tasksCompleted) {
			foreach ($task in $tasksCompleted) {
				if ($task -notin $completedOrdered) {
					Write-Host "- ${task}: Not Completed" -ForegroundColor Red
				}
			}
		}
	}
	catch {
		Write-Error "$(Get-Date): Error during task validation: $($_.Exception.Message)"
	}
}

# Function: Get-RemainingTime
<#
.SYNOPSIS
Calculates the remaining time in seconds based on provided hours, minutes, or seconds.

.DESCRIPTION
The Get-RemainingTime function returns the remaining time in seconds. It accepts one of three parameters: hours, minutes, or seconds. The function prioritizes hours over minutes, and minutes over seconds. If none of the parameters are provided, it writes an error message and exits the script.

.PARAMETER remainingTimeinHours
The number of remaining hours to be converted to seconds.

.PARAMETER remainingTimeinMinutes
The number of remaining minutes to be converted to seconds.

.PARAMETER remainingTimeinSeconds
The number of remaining seconds.

.EXAMPLE
Get-RemainingTime -remainingTimeinMinutes 15
# Returns 900

.EXAMPLE
Get-RemainingTime -remainingTimeinHours 1
# Returns 3600

.NOTES
Only one parameter should be provided at a time. If multiple parameters are provided, hours take precedence over minutes, and minutes over seconds.
#>
function Get-RemainingTime {
	param (
		$remainingTimeinHours,
		$remainingTimeinMinutes,
		$remainingTimeinSeconds
	)
	try {
		if ($null -ne $remainingTimeinHours) {
			return $remainingTimeinHours * 3600
		}
		elseif ($null -ne $remainingTimeinMinutes) {
			return $remainingTimeinMinutes * 60
		}
		elseif ($null -ne $remainingTimeinSeconds) {
			return $remainingTimeinSeconds
		}
		else {
			Write-Host "$(Get-Date): No valid remaining time parameter provided. Exiting script." -ForegroundColor Red
			exit
		}
	}
	catch {
		Write-Error "$(Get-Date): Error calculating remaining time: $($_.Exception.Message)"
		exit
	}
}

# Function: Invoke-ReviewCountdownAndCleanup
<#
.SYNOPSIS
Displays a countdown timer for script review and performs cleanup actions after script execution.

.DESCRIPTION
The Invoke-ReviewCountdownAndCleanup function provides a post-execution review period by displaying a countdown timer in the console. The user can exit the review early by pressing any key. Once the countdown completes or a key is pressed, the function attempts to stop the PowerToys Awake process if it is running, ensuring proper cleanup. Informative messages are displayed throughout the process, and errors are handled gracefully.

.PARAMETER remainingTime
The number of seconds to keep the script window open for review after execution completes.

.EXAMPLE
Invoke-ReviewCountdownAndCleanup -remainingTime 60
# Keeps the script window open for 60 seconds, allowing the user to review output or exit early by pressing a key.

.NOTES
This function is intended to be called at the end of a script to allow users time to review output and ensure that PowerToys Awake is stopped if it was started during script execution.
#>
function Invoke-ReviewCountdownAndCleanup {
	param (
		[int]$remainingTime
	)
	try {
		Write-Host "$(Get-Date): Script execution completed. The window will remain open for review for $([TimeSpan]::FromSeconds($remainingTime).ToString('hh\:mm\:ss'))." -ForegroundColor Yellow
		$originalRemainingTime = $remainingTime
		$exitEarly = $false
		while ($remainingTime -gt 0) {
			try {
				if ([Console]::KeyAvailable) {
					Write-Host "`n$(Get-Date): Key press detected. Exiting script, window will remain open." -ForegroundColor Yellow
					$exitEarly = $true
					break
				}
				$formattedTime = [TimeSpan]::FromSeconds($remainingTime).ToString('hh\:mm\:ss')
				Wait-WithAnimation -Seconds 1 -Message "Time remaining: $formattedTime"
				$remainingTime--
			}
			catch {
				Write-Error "$(Get-Date): Error during countdown timer: $($_.Exception.Message)"
				break
			}
		}

		# --- Always attempt to stop PowerToys Awake, regardless of exitEarly ---
		try {
			if (Get-Process -Name 'PowerToys.Awake' -ErrorAction SilentlyContinue) {
				Write-Host "$(Get-Date): PowerToys Awake is running. Stopping it now..." -ForegroundColor Cyan
				Get-Process -Name 'PowerToys.Awake' -ErrorAction SilentlyContinue | Stop-Process -Force
				Write-Host "$(Get-Date): PowerToys Awake stopped successfully." -ForegroundColor Green
			}
			else {
				Write-Host "$(Get-Date): PowerToys Awake is not running. No action needed." -ForegroundColor Yellow
			}
		}
		catch {
			Write-Error "$(Get-Date): Error stopping PowerToys Awake: $($_.Exception.Message)"
		}

		if ($exitEarly) {
			Write-Host "$(Get-Date): Exiting review early due to key press. Window will remain open." -ForegroundColor Yellow
			return
		}
		else {
			Write-Host "`n$(Get-Date): Script review time over. $([TimeSpan]::FromSeconds($originalRemainingTime).ToString('hh\:mm\:ss')) has passed since the script ended." -ForegroundColor Yellow
			Write-Host "$(Get-Date): Closing the script now." -ForegroundColor Yellow
		}
	}
	catch {
		Write-Error "$(Get-Date): Error during script review countdown: $($_.Exception.Message)"
	}
}

# =============================
# Step 2: Resize and position the PowerShell window on the target display.
# =============================

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
		Add-CompletedTask -Tracker $taskTracker -TaskName 'Resized and positioned PowerShell window'
	}
	else {
		Write-Host "$(Get-Date): Display 3 not found.  Resizing in current display." -ForegroundColor Yellow
		[Win32]::SetWindowPos($hwnd, [IntPtr]::Zero, $WindowPositionX, $WindowPositionY, $WindowWidth, $WindowHeight, [Win32]::SWP_NOZORDER -bor [Win32]::SWP_SHOWWINDOW)
	}
}
catch {
	Write-Error "$(Get-Date): Error resizing or positioning the PowerShell window: $($_.Exception.Message)"
}

# =============================
# Step 3: Import the DisplayConfig module for display management.
# =============================

try {
	Write-Host "$(Get-Date): Attempting to import DisplayConfig module..." -ForegroundColor Cyan
	Import-DisplayConfigModule
	Add-CompletedTask -Tracker $taskTracker -TaskName 'Imported DisplayConfig module'
}
catch {
	Write-Error "$(Get-Date): Error importing DisplayConfig module: $($_.Exception.Message)"
}

# =============================
# Step 4: Set PowerShell window transparency.
# =============================

# Set PowerShell window transparency to the specified value (default: 25)
try {
	Set-WindowTransparencyUWP -Transparency $Transparency
	Add-CompletedTask -Tracker $taskTracker -TaskName 'Set Window Transparency'
}
catch {
	Write-Error "$(Get-Date): Error setting window transparency: $($_.Exception.Message)"
}

# =============================
# Step 5: Resolve paths for Zwift Launcher and Monitor Script.
# =============================

try {
	$MonitorZwiftScriptPath = Resolve-Path -LiteralPath $MonitorZwiftScriptPath -ErrorAction Stop
	$ZwiftLauncherPath = Resolve-Path -LiteralPath $ZwiftLauncherPath -ErrorAction Stop
	Add-CompletedTask -Tracker $taskTracker -TaskName 'Zwift Launcher path resolved'
}
catch {
	Write-Error "Failed to resolve paths: $($_.Exception.Message)"
	exit 1
}

# =============================
# Step 6: Start Zwift Launcher if Zwift is not already running.
# =============================

# Check if Zwift is already running
$ZwiftAppRunning = $null -ne (Get-Process -Name $ZwiftGame -ErrorAction SilentlyContinue)

if ($ZwiftAppRunning) {
	Write-Output 'ZwiftApp.exe is already running. Skipping ZwiftLauncher.exe start.'
	Add-CompletedTask -Tracker $taskTracker -TaskName 'ZwiftApp already running or Zwift Launcher started'
}
else {
	# Start Zwift Launcher
	if (Test-Path -LiteralPath $ZwiftLauncherPath) {
		try {
			$ZwiftProcess = Start-Process -FilePath $ZwiftLauncherPath -NoNewWindow -PassThru -ErrorAction Stop
			if ($ZwiftProcess) {
				Write-Output "Zwift Launcher started successfully from path: $ZwiftLauncherPath"
				Add-CompletedTask -Tracker $taskTracker -TaskName 'ZwiftApp already running or Zwift Launcher started'
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

# =============================
# Step 7: Wait for Zwift Launcher to start, then set Zwift display as primary.
# =============================

try {
	Write-Host "$(Get-Date): Waiting for Zwift launcher to start..." -ForegroundColor Cyan
	while (-not (Get-ProcessRunning -ProcessName $ZwiftLauncher)) {
		Wait-WithAnimation -Seconds 1 -Message "Waiting for $ZwiftLauncher"
	}
	Write-Host "$(Get-Date): Zwift launcher detected. Switching primary display to $($PrimaryDisplayZwift + 1)" -ForegroundColor Green
	Set-PrimaryDisplay ($PrimaryDisplayZwift + 1) # + 1 to make it one-based index for the DisplayConfig module (index: 4)
	Add-CompletedTask -Tracker $taskTracker -TaskName 'Zwift launcher running'
	Add-CompletedTask -Tracker $taskTracker -TaskName 'Primary display set for Zwift'
}
catch {
	Write-Error "$(Get-Date): Error while waiting for Zwift launcher to start or switching primary display: $($_.Exception.Message)"
}

# =============================
# Step 8: Optionally launch PowerToys Workspaces for Zwift.
# =============================

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
			Write-Error "$(Get-Date): Error checking process ${app}: $($_.Exception.Message)"
			$allAppsRunning = $false
			break
		}
	}

	if (-not $allAppsRunning) {
		try {
			Write-Host "$(Get-Date): Launching Zwift PowerToys Workspaces..." -ForegroundColor Cyan
			Start-Process -FilePath $PowerToysWorkspacesPath -ArgumentList "$WorkspaceGuid 1"
			Write-Host "$(Get-Date): Zwift PowerToys Workspaces launched successfully." -ForegroundColor Green
			Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Workspaces launched or skipped'
		}
		catch {
			Write-Error "$(Get-Date): Error launching PowerToys Workspaces: $($_.Exception.Message)"
		}
	}
	else {
		Write-Host "$(Get-Date): All specified applications are running. Skipping PowerToys Workspaces launch." -ForegroundColor Yellow
	}
}
catch {
	Write-Error "$(Get-Date): Error in checking or launching applications: $($_.Exception.Message)"
}

# =============================
# Step 9: Wait for Zwift game to start, then maximize its window.
# =============================

try {
	Write-Host "$(Get-Date): Waiting for Zwift game to start..." -ForegroundColor Cyan
	while (-not (Get-ProcessRunning -ProcessName $ZwiftGame)) {
		Wait-WithAnimation -Seconds 1 -Message "Waiting for $ZwiftGame"
	}
	Write-Host "$(Get-Date): Zwift game detected." -ForegroundColor Green
	Add-CompletedTask -Tracker $taskTracker -TaskName 'Zwift game started'
}
catch {
	Write-Error "$(Get-Date): Error while waiting for or detecting Zwift game: $($_.Exception.Message)"
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

	$ZwiftProcess = Get-Process -Name $ZwiftGame -ErrorAction SilentlyContinue
	if ($ZwiftProcess) {
		# Get the main window handle of the Zwift game process
		$ZwiftHwnd = $ZwiftProcess.MainWindowHandle
		Write-Host "Zwift MainWindowHandle: $ZwiftHwnd"
		# If the handle is valid, maximize the window
		if ($ZwiftHwnd -ne [IntPtr]::Zero) {
			[Win32]::ShowWindow($ZwiftHwnd, [Win32]::SW_MAXIMIZE)
			Write-Host "$(Get-Date): Zwift game window maximized successfully." -ForegroundColor Green
			Add-CompletedTask -Tracker $taskTracker -TaskName 'Zwift game window maximized'
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
	Write-Error "$(Get-Date): Error maximizing Zwift game window: $($_.Exception.Message)"
}

# =============================
# Step 10: Move OBS to Zwift monitor if running.
# =============================

# Move OBS to the Zwift monitor, center it, and resize to 80% of the monitor's width and height
try {
	Write-Host "$(Get-Date): Attempting to move OBS to the Zwift monitor, center it, and resize to 80% of the monitor's dimensions..." -ForegroundColor Cyan
	$ObsProcess = Get-Process -Name $ObsProcessName -ErrorAction SilentlyContinue
	if ($ObsProcess) {
		$ObsHwnd = $ObsProcess.MainWindowHandle
		if ($ObsHwnd -ne [IntPtr]::Zero) {
			# Get the screen coordinates of the Zwift display
			Add-Type -AssemblyName System.Windows.Forms
			# Get the display index for Zwift (1-based index)
			$ZwiftDisplayIndex = $PrimaryDisplayZwift - 1
			$Displays = [System.Windows.Forms.Screen]::AllScreens
			if ($ZwiftDisplayIndex -lt $Displays.Count) {
				$ZwiftDisplay = $Displays[$ZwiftDisplayIndex]
				$X = $ZwiftDisplay.WorkingArea.X
				$Y = $ZwiftDisplay.WorkingArea.Y
				$Width = $ZwiftDisplay.WorkingArea.Width
				$Height = $ZwiftDisplay.WorkingArea.Height

				# Calculate 80% of the display size for OBS window
				$ObsWidth = [int]($Width * 0.8)
				$ObsHeight = [int]($Height * 0.8)
				# Center the OBS window on the display
				$ObsX = $X + [int](($Width - $ObsWidth) / 2)
				$ObsY = $Y + [int](($Height - $ObsHeight) / 2)

				# Move and resize OBS to be centered and 80% of the Zwift display
				[Win32]::SetWindowPos($ObsHwnd, [IntPtr]::Zero, $ObsX, $ObsY, $ObsWidth, $ObsHeight, [Win32]::SWP_SHOWWINDOW)
				[Win32]::ShowWindow($ObsHwnd, 5) # SW_SHOW
				Write-Host "$(Get-Date): OBS moved to Zwift monitor, centered, and resized to 80% of the display." -ForegroundColor Green
				Add-CompletedTask -Tracker $taskTracker -TaskName 'OBS moved to Zwift monitor and centered/resized'
			}
			else {
				Write-Host "$(Get-Date): Zwift display index $ZwiftDisplayIndex not found. Skipping OBS move." -ForegroundColor Yellow
			}
		}
		else {
			Write-Host "$(Get-Date): OBS window handle not found. Skipping OBS move." -ForegroundColor Yellow
		}
	}
	else {
		Write-Host "$(Get-Date): OBS is not running. Skipping OBS move." -ForegroundColor Yellow
	}
}
catch {
	Write-Error "$(Get-Date): Error moving OBS to Zwift monitor: $($_.Exception.Message)"
}

# =============================
# Step 11: Wait for Zwift game to close.
# =============================

try {
	Write-Host "$(Get-Date): Zwift game is running. Waiting for it to close..." -ForegroundColor Cyan
	while (Get-ProcessRunning -ProcessName $ZwiftGame) {
		Wait-WithAnimation -Seconds 1 -Message "Waiting for $ZwiftGame"
	}
	Write-Host "$(Get-Date): Zwift game closed." -ForegroundColor Green
	Add-CompletedTask -Tracker $taskTracker -TaskName 'Zwift game closed'
}
catch {
	Write-Error "$(Get-Date): Error monitoring Zwift game: $($_.Exception.Message)"
}

# =============================
# Step 12: Ensure Sauce for Zwift is closed.
# =============================

try {
	Write-Host "$(Get-Date): Checking for Sauce for Zwift process..." -ForegroundColor Cyan
	$SauceProcess = Get-Process | Where-Object { $_.Name -like 'Sauce for Zwift*' }

	if ($SauceProcess) {
		Write-Host "$(Get-Date): Sauce for Zwift is running. Closing it..." -ForegroundColor Yellow
		$SauceProcess | Stop-Process -Force
		Write-Host "$(Get-Date): Sauce for Zwift closed successfully." -ForegroundColor Green
		Add-CompletedTask -Tracker $taskTracker -TaskName 'Sauce for Zwift closed or skipped'
	}
	else {
		Write-Host "$(Get-Date): Sauce for Zwift is not running. Skipping..." -ForegroundColor Yellow
		Add-CompletedTask -Tracker $taskTracker -TaskName 'Sauce for Zwift closed or skipped'
	}
}
catch {
	Write-Error "$(Get-Date): Error closing Sauce for Zwift: $($_.Exception.Message)"
}

# =============================
# Step 13: Restore primary display to default.
# =============================

try {
	Write-Host "$(Get-Date): Restoring primary display to $($PrimaryDisplayDefault + 1)..." -ForegroundColor Cyan
	Set-PrimaryDisplay ($PrimaryDisplayDefault + 1) # + 1 to make it one-based index for the DisplayConfig module (index: 2)
	Write-Host "$(Get-Date): Primary display restored to $($PrimaryDisplayDefault + 1)." -ForegroundColor Green
	Add-CompletedTask -Tracker $taskTracker -TaskName 'Primary display restored'
}
catch {
	Write-Error "$(Get-Date): Error restoring primary display: $($_.Exception.Message)"
}

# =============================
# Step 14: Stop and close OBS if running.
# =============================

try {
	Write-Host "$(Get-Date): Checking for OBS..." -ForegroundColor Cyan
	$ObsProcess = Get-Process -Name $ObsProcessName -ErrorAction SilentlyContinue

	if ($ObsProcess) {
		Write-Host "$(Get-Date): OBS is running. Stopping recording and closing OBS..." -ForegroundColor Yellow

		try {
			# Send hotkey to stop recording
			$wshell = New-Object -ComObject WScript.Shell
			$ObsProcess | ForEach-Object {
				try {
					[void]$wshell.AppActivate($_.MainWindowTitle)
					Start-Sleep -Milliseconds 500
					$wshell.SendKeys($StopRecordingHotkey) # Send hotkey to stop recording
				}
				catch {
					Write-Error "$(Get-Date): Error activating OBS window or sending stop recording hotkey: $($_.Exception.Message)"
				}
			}
			Write-Host "$(Get-Date): Sent stop recording command to OBS" -ForegroundColor Green
		}
		catch {
			Write-Error "$(Get-Date): Error initializing WScript.Shell or sending stop recording command: $($_.Exception.Message)"
		}

		try {
			# Give OBS time to save the recording
			Write-Host "$(Get-Date): Waiting for recording to save..." -ForegroundColor Cyan
			Wait-WithAnimation -Seconds 5 -Message 'Saving recording...'
		}
		catch {
			Write-Error "$(Get-Date): Error while waiting for recording to save: $($_.Exception.Message)"
		}

		try {
			# Close OBS gracefully with hotkey instead of force-killing it
			$ObsProcess | ForEach-Object {
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
					Add-CompletedTask -Tracker $taskTracker -TaskName 'OBS recording stopped'

				}
				catch {
					Write-Error "$(Get-Date): Error activating OBS window or sending close hotkey: $($_.Exception.Message)"
				}
			}
		}
		catch {
			Write-Error "$(Get-Date): Error initializing WScript.Shell or sending close command to OBS: $($_.Exception.Message)"
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
					Write-Error "$(Get-Date): Error forcefully closing OBS: $($_.Exception.Message)"
				}
			}
			else {
				Write-Host "$(Get-Date): OBS closed successfully" -ForegroundColor Green
				Add-CompletedTask -Tracker $taskTracker -TaskName 'OBS closed'
			}
		}
		catch {
			Write-Error "$(Get-Date): Error while waiting for OBS to close: $($_.Exception.Message)"
		}
	}
	else {
		Write-Host "$(Get-Date): OBS is not running" -ForegroundColor Yellow
	}
}
catch {
	Write-Error "$(Get-Date): Error stopping OBS recording or closing OBS: $($_.Exception.Message)"
}

# =============================
# Step 15: Run FreeFileSync batch job to sync files.
# =============================

# Run FreeFileSync batch job after Zwift game closes and display is restored to default display (index: 2)
# This ensures that any files (screenshots) modified during the Zwift session are synchronized with the backup location.
try {
	Write-Host "$(Get-Date): Running FreeFileSync batch job..." -ForegroundColor Cyan
	Start-Process -FilePath $FreeFileSyncPath -ArgumentList "`"$BatchJobPath`""
	Write-Host "$(Get-Date): FreeFileSync batch job started (not waiting for completion)." -ForegroundColor Green
	Add-CompletedTask -Tracker $taskTracker -TaskName 'FreeFileSync batch job started'

	# Run the second batch job for recordings to NAS
	Write-Host "$(Get-Date): Running second FreeFileSync batch job (RecordingsToNas)..." -ForegroundColor Cyan
	Start-Process -FilePath $FreeFileSyncPath -ArgumentList "`"$BatchJobPath2`""
	Write-Host "$(Get-Date): Second FreeFileSync batch job started (not waiting for completion)." -ForegroundColor Green
	Add-CompletedTask -Tracker $taskTracker -TaskName 'FreeFileSync batch job 2 started'
}
catch {
	Write-Error "$(Get-Date): Error running FreeFileSync batch job(s): $($_.Exception.Message)"
}



# =============================
# Step 16: Close Spotify if running.
# =============================

try {
	Write-Host "$(Get-Date): Checking for Spotify..." -ForegroundColor Cyan
	$SpotifyProcess = Get-Process -Name 'Spotify' -ErrorAction SilentlyContinue

	if ($SpotifyProcess) {
		Write-Host "$(Get-Date): Spotify is running. Closing Spotify..." -ForegroundColor Yellow
		$SpotifyProcess | Stop-Process -Force
		Write-Host "$(Get-Date): Spotify closed successfully." -ForegroundColor Green
		Add-CompletedTask -Tracker $taskTracker -TaskName 'Spotify closed'
	}
	else {
		Write-Host "$(Get-Date): Spotify is not running." -ForegroundColor Yellow
	}
}
catch {
	Write-Error "$(Get-Date): Error closing Spotify: $($_.Exception.Message)"
}

# =============================
# Step 17: Launch Microsoft Edge with specified URLs in app mode.
# =============================

# Check if Microsoft Edge is installed
if (Test-Path -Path $EdgePath) {
	try {
		Write-Host "$(Get-Date): Microsoft Edge found. Launching in app mode with the specified URLs..." -ForegroundColor Cyan
		Start-Process -FilePath "$EdgePath" -ArgumentList @("$EdgeUrl1", "$EdgeUrl2", "$EdgeUrl3")
		Write-Host "$(Get-Date): Microsoft Edge launched successfully with the specified URLs." -ForegroundColor Green
		Add-CompletedTask -Tracker $taskTracker -TaskName 'Microsoft Edge launched'
	}
	catch {
		Write-Error "$(Get-Date): Error launching Microsoft Edge: $($_.Exception.Message)"
	}
}
else {
	Write-Host "$(Get-Date): Microsoft Edge not found at $EdgePath. Skipping launch." -ForegroundColor Yellow
	Add-CompletedTask -Tracker $taskTracker -TaskName 'Microsoft Edge skipped'
}

# =============================
# Step 18: Open File Explorer for Zwift media and pictures directories.
# =============================

try {
	Write-Host "$(Get-Date): Opening File Explorer with specified directories..." -ForegroundColor Cyan
	if (Test-Path -Path $ZwiftMediaPath) {
		Start-Process -FilePath 'explorer.exe' -ArgumentList "`"$ZwiftMediaPath`""
		Add-CompletedTask -Tracker $taskTracker -TaskName 'Opened File Explorer for ZwiftMediaPath'
	}
	else {
		Write-Host "$(Get-Date): Path $ZwiftMediaPath does not exist. Skipping opening File Explorer for this path." -ForegroundColor Yellow
	}

	if (Test-Path -Path $ZwiftPicturesPath) {
		Start-Process -FilePath 'explorer.exe' -ArgumentList "`"$ZwiftPicturesPath`""
		Add-CompletedTask -Tracker $taskTracker -TaskName 'Opened File Explorer for ZwiftPicturesPath'
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
	Write-Error "$(Get-Date): Error opening File Explorer: $($_.Exception.Message)"
}

# =============================
# Step 19: Reset PowerShell window transparency to opaque.
# =============================

try {
	Set-WindowTransparencyUWP -Transparency 0
	Write-Host "$(Get-Date): Window transparency reset to fully opaque." -ForegroundColor Green
	Add-CompletedTask -Tracker $taskTracker -TaskName 'Window transparency reset to fully opaque'
}
catch {
	Write-Error "$(Get-Date): Error resetting window transparency: $($_.Exception.Message)"
	Write-Host "$(Get-Date): Attempting fallback by resetting transparency using default Win32 API..." -ForegroundColor Yellow
	try {
		$hwnd = [Win32]::GetForegroundWindow()
		$style = [Win32]::GetWindowLong($hwnd, [Win32]::GWL_EXSTYLE)
		[Win32]::SetWindowLong($hwnd, [Win32]::GWL_EXSTYLE, $style -bor [Win32]::WS_EX_LAYERED)
		[Win32]::SetLayeredWindowAttributes($hwnd, 0, 255, [Win32]::LWA_ALPHA)
		Write-Host "$(Get-Date): Fallback succeeded. Window transparency reset to fully opaque using Win32 API." -ForegroundColor Green
		Add-CompletedTask -Tracker $taskTracker -TaskName 'Window transparency reset to fully opaque'
	}
	catch {
		Write-Error "$(Get-Date): Fallback failed: $($_.Exception.Message). Continuing script execution regardless."
	}
}

# =============================
# Step 20: Set PowerToys Awake if available.
# =============================

$PowerToysAwakeArgs = "--time-limit $PowerToysAwakeTime --display-on true"
try {
	if (Test-Path -LiteralPath $PowerToysAwakePath) {
		Write-Host "$(Get-Date): Setting PowerToys Awake to on for ($([TimeSpan]::FromSeconds($PowerToysAwakeTime).ToString('hh\:mm\:ss')))..." -ForegroundColor Cyan
		Start-Process -FilePath $PowerToysAwakePath -ArgumentList $PowerToysAwakeArgs -WindowStyle Hidden -ErrorAction Stop
		Write-Host "$(Get-Date): PowerToys Awake settings applied." -ForegroundColor Green
		Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Awake set'
	}
	else {
		Write-Host "$(Get-Date): PowerToys Awake executable not found at '$PowerToysAwakePath'. Skipping." -ForegroundColor Yellow
		Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Awake skipped'
	}
}
catch {
	Write-Error "$(Get-Date): Error setting PowerToys Awake: $($_.Exception.Message)"
	Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Awake failed'
}

# =============================
# Step 21: Show task completion summary and allow review/countdown before exit.
# =============================

try {
	Show-TaskCompletionSummary -Tracker $taskTracker -tasksCompleted $tasksCompleted
	$remainingTime = Get-RemainingTime -remainingTimeinHours $remainingTimeinHours -remainingTimeinMinutes $remainingTimeinMinutes -remainingTimeinSeconds $remainingTimeinSeconds
	Invoke-ReviewCountdownAndCleanup -remainingTime $remainingTime

	# --- Add prompt to keep window open after review period or key press ---
	Write-Host "`n$(Get-Date): Review period complete. Press Enter to close this window..." -ForegroundColor Cyan
	[void] (Read-Host)
}
catch {
	Write-Error "$(Get-Date): Unexpected error in the final validation and review process: $($_.Exception.Message)"
	return
}
