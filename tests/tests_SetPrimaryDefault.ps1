# Define test parameters
$ZwiftProcessName = 'ZwiftLauncher' # Replace with Zwift's actual process name
$PrimaryDisplayZwift = 4
$PrimaryDisplayDefault = 2

# Path to the DisplayConfig module
$ValidModulePath = 'C:\Users\Nick\Dropbox\PC (2)\Documents\PowerShell\Modules\DisplayConfig\3.1.0\DisplayConfig.dll'
$InvalidModulePath = 'C:\InvalidPath\DisplayConfig.dll'

# Function to simulate the Zwift process
function Start-ZwiftSimulation {
    param (
        [string]$ProcessName
    )
    Start-Process -FilePath "powershell.exe" -ArgumentList "-Command Start-Sleep -Seconds 300" -PassThru -NoNewWindow -ErrorAction SilentlyContinue | Out-Null
}

# Function to stop the Zwift simulation
function Stop-ZwiftSimulation {
    param (
        [string]$ProcessName
    )
    Get-Process -Name $ProcessName -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
}

# Function to test the main script
function Test-MainScript {
    param (
        [string]$ModulePath
    )

    # Create a temporary script to test the main script
    $tempScript = @"
\$ZwiftProcessName = 'ZwiftLauncher' # Replace with Zwift's actual process name
\$PrimaryDisplayZwift = 4
\$PrimaryDisplayDefault = 2

# Path to the DisplayConfig module
\$ModulePath = '$ModulePath'

# Import the DisplayConfig module
Import-Module \$ModulePath

# Function to check if Zwift is running
function Is-ZwiftRunning {
	Get-Process | Where-Object { \$_.Name -eq \$ZwiftProcessName } -ErrorAction SilentlyContinue
}

if (-not (Is-ZwiftRunning)) {
	Set-DisplayPrimary \$PrimaryDisplayDefault
}
"@

    # Save the temporary script to a file
    $tempScriptPath = [System.IO.Path]::GetTempFileName() + ".ps1"
    Set-Content -Path $tempScriptPath -Value $tempScript

    # Execute the temporary script
    try {
        $output = & powershell.exe -File $tempScriptPath -ErrorAction Stop
        Write-Output $output
    }
    catch {
        Write-Error "Test failed: $($_.Exception.Message)"
    }
    finally {
        # Clean up the temporary script file
        Remove-Item -Path $tempScriptPath -Force
    }
}

# Test cases
Write-Output "Testing with valid module path and Zwift running..."
Start-ZwiftSimulation -ProcessName $ZwiftProcessName
Test-MainScript -ModulePath $ValidModulePath
Stop-ZwiftSimulation -ProcessName $ZwiftProcessName

Write-Output "Testing with valid module path and Zwift not running..."
Test-MainScript -ModulePath $ValidModulePath

Write-Output "Testing with invalid module path..."
Test-MainScript -ModulePath $InvalidModulePath