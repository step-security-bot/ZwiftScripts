$ZwiftExe = 'ZwiftLauncher' # Replace with Zwift's actual process name
$PrimaryDisplayZwift = 4
$PrimaryDisplayDefault = 2

# Import the DisplayConfig module
Import-Module 'C:\Users\Nick\Dropbox\PC (2)\Documents\PowerShell\Modules\DisplayConfig\3.1.0\DisplayConfig.dll'

# Function to check if Zwift is running
function Is-ZwiftRunning {
	Get-Process -Name $ZwiftExe -ErrorAction SilentlyContinue
}

Set-DisplayPrimary $PrimaryDisplayDefault
