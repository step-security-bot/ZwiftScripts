param (
	[string]$zwiftLauncherProcessName = 'ZwiftLauncher', # Replace with Zwift's actual process name
	[int]$primaryDisplayZwift = 4,
	[int]$primaryDisplayDefault = 2,
	[string]$ModulePath = 'C:\Users\Nick\Dropbox\PC (2)\Documents\PowerShell\Modules\DisplayConfig\3.1.0\DisplayConfig.dll'
)

# Import the DisplayConfig module with error handling
try {
	if (!(Test-Path -Path $ModulePath)) {
		throw "DisplayConfig module not found at path: $ModulePath"
	}

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
		Get-Process -Name $zwiftLauncherProcessName -ErrorAction Stop
		return $true
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
		try {
			Set-DisplayPrimary $primaryDisplayDefault
			Write-Output "Primary display set to default: $primaryDisplayDefault"
		}
		catch {
			Write-Error "Failed to set primary display to default: $($_.Exception.Message)"
			exit 1
		}
	}
 else {
		Write-Output 'Zwift is running. Primary display remains unchanged.'
	}
}
catch {
	Write-Error "Failed to set primary display: $($_.Exception.Message)"
	exit 1
}
