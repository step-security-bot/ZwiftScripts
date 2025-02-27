# Import the module to be tested
. "$PSScriptRoot/SetPrimaryDefault.ps1"

# Mock the Get-Process cmdlet
Mock Get-Process {
	param (
		[string]$Name
	)
	if ($Name -eq 'ZwiftLauncher') {
		return @{ Name = 'ZwiftLauncher' }
	}
	return $null
}

# Test if Zwift is running
Describe "Is-ZwiftRunning" {
	It "Should return true if Zwift is running" {
		Mock Get-Process { return @{ Name = 'ZwiftLauncher' } }
		$result = Is-ZwiftRunning
		$result | Should -Not -BeNullOrEmpty
	}

	It "Should return false if Zwift is not running" {
		Mock Get-Process { return $null }
		$result = Is-ZwiftRunning
		$result | Should -BeNullOrEmpty
	}
}

# Test the primary display setting
Describe "Set-PrimaryDisplay" {
	BeforeEach {
		Mock Set-DisplayPrimary
	}

	It "Should set primary display to default if Zwift is not running" {
		Mock Get-Process { return $null }
		. "$PSScriptRoot/SetPrimaryDefault.ps1"
		Assert-MockCalled Set-DisplayPrimary -Exactly 1 -Scope It -ParameterFilter { $PrimaryDisplayDefault }
	}

	It "Should not change primary display if Zwift is running" {
		Mock Get-Process { return @{ Name = 'ZwiftLauncher' } }
		. "$PSScriptRoot/SetPrimaryDefault.ps1"
		Assert-MockCalled Set-DisplayPrimary -Exactly 0 -Scope It
	}
}