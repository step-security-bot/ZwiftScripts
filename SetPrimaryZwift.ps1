param (
	[string]$ZwiftProcessName = 'ZwiftLauncher', # Replace with Zwift's actual process name
	[int]$PrimaryDisplayZwift = 4,
	[int]$PrimaryDisplayDefault = 2,
	[string]$ModulePath = 'C:\Users\Nick\Dropbox\PC (2)\Documents\PowerShell\Modules\DisplayConfig\3.1.0\DisplayConfig.dll'
)

# Import the DisplayConfig module with error handling
try {
	Import-Module $ModulePath -ErrorAction Stop
	Write-Verbose "Successfully imported DisplayConfig module from $ModulePath"
}
catch {
	Write-Error "Failed to import DisplayConfig module: $($_.Exception.Message)"
	exit 1
}

# Function to check if Zwift is running
function Test-ZwiftRunning {
	try {
		return $null -ne (Get-Process -Name $ZwiftProcessName -ErrorAction SilentlyContinue)
	}
	catch {
		Write-Verbose 'Zwift process not found.'
		return $false
	}
}

# Ensure Set-DisplayPrimary function exists
try {
	if (-not (Get-Command -Name Set-DisplayPrimary -ErrorAction SilentlyContinue)) {
		throw 'Set-DisplayPrimary function not found. Ensure the DisplayConfig module is correctly imported.'
	}
}
catch {
	Write-Error "$($_.Exception.Message)"
	exit 1
}

# Set the primary display based on whether Zwift is running
try {
	if (-not (Test-ZwiftRunning)) {
		Set-DisplayPrimary $PrimaryDisplayDefault
		Write-Output "Primary display set to default: $PrimaryDisplayDefault"
	}
	else {
		Set-DisplayPrimary $PrimaryDisplayZwift
		Write-Output "Primary display set to Zwift: $PrimaryDisplayZwift"
	}
}
catch {
	Write-Error "Failed to set primary display: $($_.Exception.Message)"
	exit 1
}
