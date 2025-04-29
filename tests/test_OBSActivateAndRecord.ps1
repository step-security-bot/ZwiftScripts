# Test script for OBS Activate Window and Start Recording
# This script will attempt to activate the OBS window and send the start recording hotkey multiple times.
# It logs the results to help troubleshoot issues with window activation and hotkey delivery.

param(
    [string]$ObsProcessName = 'obs64',
    [string]$ObsRecordingHotkey = '^{F11}',
    [int]$Attempts = 5,
    [int]$DelaySeconds = 2
)

Add-Type @"
using System;
using System.Runtime.InteropServices;
public class Win32 {
    [DllImport("user32.dll")]
    public static extern bool SetForegroundWindow(IntPtr hWnd);
    [DllImport("user32.dll")]
    public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);
    [DllImport("user32.dll")]
    public static extern bool IsIconic(IntPtr hWnd);
}
"@

function Activate-OBSWindow {
    param([System.Diagnostics.Process]$obsProc)
    $hWnd = $obsProc.MainWindowHandle
    if ($hWnd -eq 0) {
        Write-Host "[$(Get-Date -Format o)] OBS process has no MainWindowHandle." -ForegroundColor Yellow
        return $false
    }
    # If minimized, restore window (SW_RESTORE = 9)
    if ([Win32]::IsIconic($hWnd)) {
        [Win32]::ShowWindowAsync($hWnd, 9) | Out-Null
        Start-Sleep -Milliseconds 500
    }
    $result = [Win32]::SetForegroundWindow($hWnd)
    if ($result) {
        Write-Host "[$(Get-Date -Format o)] Window activated using Win32 API."
    } else {
        Write-Host "[$(Get-Date -Format o)] Failed to activate window using Win32 API." -ForegroundColor Yellow
    }
    return $result
}

function Test-OBSActivateAndRecord {
    param(
        [string]$ObsProcessName,
        [string]$ObsRecordingHotkey,
        [int]$Attempts,
        [int]$DelaySeconds
    )
    $wshell = New-Object -ComObject WScript.Shell
    for ($i = 1; $i -le $Attempts; $i++) {
        $obsProc = Get-Process -Name $ObsProcessName -ErrorAction SilentlyContinue
        if ($obsProc) {
            Write-Host "[$(Get-Date -Format o)] Attempt $($i): Found OBS process. Trying to activate window..."
            Write-Host "[$(Get-Date -Format o)] Attempt $($i): OBS MainWindowTitle: '$($obsProc.MainWindowTitle)'"
            $activated = Activate-OBSWindow $obsProc
            if ($activated) {
                Write-Host "[$(Get-Date -Format o)] Attempt $($i): Window activated. Sending hotkey $ObsRecordingHotkey."
                $wshell.SendKeys($ObsRecordingHotkey)
            } else {
                Write-Host "[$(Get-Date -Format o)] Attempt $($i): Failed to activate OBS window (Win32 API)." -ForegroundColor Yellow
            }
        } else {
            Write-Host "[$(Get-Date -Format o)] Attempt $($i): OBS process not found." -ForegroundColor Red
        }
        Start-Sleep -Seconds $DelaySeconds
    }
    Write-Host "Test complete. Please check OBS for recording status and review this log."
}

Test-OBSActivateAndRecord -ObsProcessName $ObsProcessName -ObsRecordingHotkey $ObsRecordingHotkey -Attempts $Attempts -DelaySeconds $DelaySeconds
