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

try {
	Write-Host "$(Get-Date): Attempting to move OBS to the Zwift monitor and bring it to the top..." -ForegroundColor Cyan
	$obsProcess = Get-Process -Name $ObsProcessName -ErrorAction SilentlyContinue
	if ($obsProcess) {
		$obsHwnd = $obsProcess.MainWindowHandle
		if ($obsHwnd -ne [IntPtr]::Zero) {
			# Get the screen coordinates of the Zwift display
			Add-Type -AssemblyName System.Windows.Forms
			$zwiftDisplayIndex = $PrimaryDisplayZwift - 1
			$displays = [System.Windows.Forms.Screen]::AllScreens
			if ($zwiftDisplayIndex -lt $displays.Count) {
				$zwiftDisplay = $displays[$zwiftDisplayIndex]
				$x = $zwiftDisplay.WorkingArea.X
				$y = $zwiftDisplay.WorkingArea.Y
				$width = $zwiftDisplay.WorkingArea.Width
				$height = $zwiftDisplay.WorkingArea.Height
				# Move and resize OBS to fill the Zwift display and bring to top
				[Win32]::SetWindowPos($obsHwnd, [IntPtr]::Zero, $x, $y, $width, $height, [Win32]::SWP_SHOWWINDOW)
				[Win32]::ShowWindow($obsHwnd, 5) # SW_SHOW
				Write-Host "$(Get-Date): OBS moved to Zwift monitor and brought to top." -ForegroundColor Green
				Add-CompletedTask -Tracker $taskTracker -TaskName 'OBS moved to Zwift monitor and brought to top'
			}
			else {
				Write-Host "$(Get-Date): Zwift display index $zwiftDisplayIndex not found. Skipping OBS move." -ForegroundColor Yellow
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
