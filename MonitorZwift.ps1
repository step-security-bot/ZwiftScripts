param (
    [string]$ModulePath = "$env:USERPROFILE\Documents\PowerShell\Modules\DisplayConfig\3.1.0\DisplayConfig.dll",
    [int]$Transparency = 25,
    [int]$SleepInterval = 10,  # Default sleep interval in seconds
    [string]$ZwiftExe = 'ZwiftLauncher', # Replace with Zwift's actual process name (without .exe)
    [int]$PrimaryDisplayZwift = 4,
    [int]$PrimaryDisplayDefault = 2
)

# Import the DisplayConfig module
if (-not (Test-Path $ModulePath)) {
    Write-Host "Module path $ModulePath does not exist. Downloading DisplayConfig module..."
    try {
        # Attempt to download and install the module
        Install-Module -Name DisplayConfig -Force -AllowClobber -Scope CurrentUser -ErrorAction Stop
        Write-Host "Module downloaded and installed successfully."
    }
    catch {
        Write-Host "Failed to download and install module: $($_.Exception.Message). Continuing without it."
    }
}

try {
    Import-Module $ModulePath -ErrorAction Stop
}
catch {
    Write-Host "Failed to import module from $ModulePath. Continuing without it."
}

# Function to check if Zwift is running
function Get-ZwiftRunning {
    $query = "SELECT * FROM Win32_Process WHERE Name = '$ZwiftExe.exe'"
    $process = Get-CimInstance -Query $query
    return $null -ne $process
}

# Function to set window transparency
function Set-WindowTransparency {
    param (
        [int]$Transparency
    )

    Add-Type @'
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

            public static int GWL_EXSTYLE = -20;
            public static int WS_EX_LAYERED = 0x80000;
            public static int LWA_ALPHA = 0x2;
        }
'@

    $hwnd = [Win32]::GetForegroundWindow()
    $style = [Win32]::GetWindowLong($hwnd, [Win32]::GWL_EXSTYLE)
    [Win32]::SetWindowLong($hwnd, [Win32]::GWL_EXSTYLE, $style -bor [Win32]::WS_EX_LAYERED)
    [Win32]::SetLayeredWindowAttributes($hwnd, 0, $Transparency, [Win32]::LWA_ALPHA)
}

# Set the PowerShell window transparency
Set-WindowTransparency -Transparency $Transparency

$WasRunning = $false
Write-Host 'Starting Zwift monitor script...'

while ($true) {
    try {
        $IsRunning = Get-ZwiftRunning
        if ($IsRunning -and -not $WasRunning) {
            Write-Host "$(Get-Date): Zwift started. Setting primary display to $PrimaryDisplayZwift"
            Set-DisplayPrimary $PrimaryDisplayZwift
            $WasRunning = $true
        }
        elseif (-not $IsRunning -and $WasRunning) {
            Write-Host "$(Get-Date): Zwift closed. Setting primary display to $PrimaryDisplayDefault"
            Set-DisplayPrimary $PrimaryDisplayDefault
            $WasRunning = $false
            break  # Exit the loop after Zwift closes
        }
    }
    catch {
        Write-Host "$(Get-Date): Error occurred - $_"
    }

    Start-Sleep -Seconds $SleepInterval
}
Write-Host 'Script finished.'