# Import the Pester module for testing
Import-Module Pester

# Mock the Import-Module cmdlet to prevent actual module import during tests
Mock Import-Module {
	return $null
}

# Mock the Get-Process cmdlet to simulate Zwift running or not running
Mock Get-Process {
	param ($Name)
	if ($Name -eq 'ZwiftLauncher') {
		return @{ Name = 'ZwiftLauncher' }
	}
	return $null
}

# Mock the Set-DisplayPrimary function to prevent actual display changes during tests
Mock Set-DisplayPrimary {
	param ($Display)
	return $null
}

Describe "SetPrimaryZwift.ps1" {
	BeforeAll {
		# Load the script to test
		. "$PSScriptRoot/SetPrimaryZwift.ps1"
	}

	Context "When Zwift is not running" {
		It "Should set the primary display to default" {
			# Mock Get-Process to return $null to simulate Zwift not running
			Mock Get-Process { return $null } -Verifiable

			# Execute the script
			. "$PSScriptRoot/SetPrimaryZwift.ps1"

			# Assert that Set-DisplayPrimary was called with $PrimaryDisplayDefault
			Assert-MockCalled Set-DisplayPrimary -ParameterFilter { $Display -eq 2 } -Exactly 1
		}
	}

	Context "When Zwift is running" {
		It "Should set the primary display to Zwift" {
			# Mock Get-Process to return a process object to simulate Zwift running
			Mock Get-Process { return @{ Name = 'ZwiftLauncher' } } -Verifiable

			# Execute the script
			. "$PSScriptRoot/SetPrimaryZwift.ps1"

			# Assert that Set-DisplayPrimary was called with $PrimaryDisplayZwift
			Assert-MockCalled Set-DisplayPrimary -ParameterFilter { $Display -eq 4 } -Exactly 1
		}
	}

	Context "When DisplayConfig module import fails" {
		It "Should exit with an error" {
			# Mock Import-Module to throw an exception
			Mock Import-Module { throw "Import failed" } -Verifiable

			# Execute the script and capture the error
			$error.Clear()
			. "$PSScriptRoot/SetPrimaryZwift.ps1" 2>$null

			# Assert that an error was thrown
			$error[0].Exception.Message | Should -Be "Import failed"
		}
	}

	Context "When Set-DisplayPrimary function is not found" {
		It "Should exit with an error" {
			# Mock Get-Command to return $null to simulate function not found
			Mock Get-Command { return $null } -Verifiable

			# Execute the script and capture the error
			$error.Clear()
			. "$PSScriptRoot/SetPrimaryZwift.ps1" 2>$null

			# Assert that an error was thrown
			$error[0].Exception.Message | Should -Be "Set-DisplayPrimary function not found. Ensure the DisplayConfig module is correctly imported."
		}
	}
}