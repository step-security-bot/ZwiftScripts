$ZwiftProcessName = 'ZwiftLauncher' # Replace with Zwift's actual process name
$PrimaryDisplayZwift = 4
$PrimaryDisplayDefault = 2

# Path to the DisplayConfig module
$ModulePath = 'C:\Users\Nick\Dropbox\PC (2)\Documents\PowerShell\Modules\DisplayConfig\3.1.0\DisplayConfig.dll'

# Import the DisplayConfig module
Import-Module $ModulePath

# Function to check if Zwift is running
function Is-ZwiftRunning {
	Get-Process | Where-Object { $_.Name -eq $ZwiftProcessName } -ErrorAction SilentlyContinue
}

if (-not (Is-ZwiftRunning)) {
	Set-DisplayPrimary $PrimaryDisplayDefault
}
