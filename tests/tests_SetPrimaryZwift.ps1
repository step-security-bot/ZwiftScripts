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

# Import the DisplayConfig module with error handling
try {
    Import-Module \$ModulePath -ErrorAction Stop
    Write-Verbose "Successfully imported DisplayConfig module from \$ModulePath"
}
catch {
    Write-Error "Failed to import DisplayConfig module: \$(`$_.Exception.Message)"
    exit 1
}

# Function to check if Zwift is running
function Is-ZwiftRunning {
    return (Get-Process -Name \$ZwiftProcessName -ErrorAction SilentlyContinue) -ne \$null
}

# Ensure Set-DisplayPrimary function exists
if (-not (Get-Command -Name Set-DisplayPrimary -ErrorAction SilentlyContinue)) {
    Write-Error "Set-DisplayPrimary function not found. Ensure the DisplayConfig module is correctly imported."
    exit 1
}

# Set the primary display based on whether Zwift is running
try {
    if (-not (Is-ZwiftRunning)) {
        Set-DisplayPrimary \$PrimaryDisplayDefault
        Write-Output "Primary display set to default: \$PrimaryDisplayDefault"
    } else {
        Set-DisplayPrimary \$PrimaryDisplayZwift
        Write-Output "Primary display set to Zwift: \$PrimaryDisplayZwift"
    }
}
catch {
    Write-Error "Failed to set primary display: \$(`$.Exception.Message)"
    exit 1
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