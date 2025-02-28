param (
	[string]$ModulePath = "$env:USERPROFILE\Documents\PowerShell\Modules\DisplayConfig\3.1.0\DisplayConfig.dll",
	[int]$Transparency = 25,
	[int]$SleepInterval = 5, # Reduced interval for faster detection
	[string]$ZwiftLauncher = 'ZwiftLauncher', # Zwift launcher process name
	[string]$ZwiftGame = 'ZwiftApp', # Zwift game process name
	[int]$PrimaryDisplayZwift = 4,
	[int]$PrimaryDisplayDefault = 2
)

# Import the DisplayConfig module or install it if not available
function Import-DisplayConfigModule {
	if (-not (Test-Path $ModulePath)) {
		Write-Host "$(Get-Date): Module path $ModulePath does not exist. Downloading DisplayConfig module..."
		try {
			Install-Module -Name DisplayConfig -Force -AllowClobber -Scope CurrentUser -ErrorAction Stop
			Write-Host "$(Get-Date): Module downloaded and installed successfully."
		}
		catch {
			Write-Host "$(Get-Date): Failed to download and install module: $($_.Exception.Message). Continuing without it."
		}
	}

	try {
		Import-Module $ModulePath -ErrorAction Stop
		Write-Host "$(Get-Date): Successfully imported DisplayConfig module."
	}
	catch {
		Write-Host "$(Get-Date): Failed to import module from ${ModulePath}: $($_.Exception.Message). Continuing without it."
	}
}

# Function to check if a process is running
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

# Function to set window transparency
# Define the Win32 class once
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

# Ensure the transparency is applied only to the PowerShell window
function Set-WindowTransparency {
	param (
		[int]$Transparency
	)
	try {
		$hwnd = [Win32]::GetForegroundWindow()
		$process = Get-Process -Id ([System.Diagnostics.Process]::GetCurrentProcess().Id)
		$processName = $process.ProcessName.ToLower()
		if ($processName -eq 'powershell' -or $processName -eq 'pwsh' -or $processName -eq 'windowsterminal' -or $processName -eq 'wt') {
			$style = [Win32]::GetWindowLong($hwnd, [Win32]::GWL_EXSTYLE)
			[Win32]::SetWindowLong($hwnd, [Win32]::GWL_EXSTYLE, $style -bor [Win32]::WS_EX_LAYERED)
			[Win32]::SetLayeredWindowAttributes($hwnd, 0, [byte]$Transparency, [Win32]::LWA_ALPHA)
			Write-Host "$(Get-Date): Successfully set window transparency to $Transparency"
		}
		else {
			Write-Host "$(Get-Date): The foreground window is not a PowerShell or Windows Terminal window. Transparency not applied."
		}
	}
	catch {
		Write-Host "$(Get-Date): Failed to set window transparency: $($_.Exception.Message)"
	}
}

# Function to set primary display
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

# Import DisplayConfig module
try {
	Import-DisplayConfigModule
}
catch {
	Write-Host "$(Get-Date): Error importing DisplayConfig module: $($_.Exception.Message)"
}

# Set PowerShell window transparency
try {
	Set-WindowTransparency -Transparency $Transparency
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

# Wait for Zwift launcher to start
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

# Wait for Zwift game to start
try {
	while (-not (Get-ProcessRunning -ProcessName $ZwiftGame)) {
		Start-Sleep -Seconds $SleepInterval
	}
	Write-Host "$(Get-Date): Zwift game detected. Monitoring until it closes..."
}
catch {
	Write-Host "$(Get-Date): Error detecting Zwift game: $($_.Exception.Message)"
}

# Wait for Zwift game to close
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
try {
	Write-Host "$(Get-Date): Closing the script."
}
catch {
	Write-Host "$(Get-Date): Error while closing the script: $($_.Exception.Message)"
}
exit
