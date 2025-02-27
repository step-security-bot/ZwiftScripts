# Import the module to be tested
. "$PSScriptRoot\MonitorZwift.ps1"

Describe "MonitorZwift.ps1 Tests" {
	Context "Get-ZwiftRunning Function" {
		It "Should return $true if Zwift is running" {
			# Mock Get-CimInstance to simulate Zwift running
			Mock -CommandName Get-CimInstance -MockWith {
				return @{
					Name = 'ZwiftLauncher.exe'
				}
			}

			$result = Get-ZwiftRunning
			$result | Should -Be $true
		}

		It "Should return $false if Zwift is not running" {
			# Mock Get-CimInstance to simulate Zwift not running
			Mock -CommandName Get-CimInstance -MockWith {
				return $null
			}

			$result = Get-ZwiftRunning
			$result | Should -Be $false
		}
	}

	Context "Set-WindowTransparency Function" {
		It "Should set window transparency without errors" {
			{ Set-WindowTransparency -Transparency 50 } | Should -Not -Throw
		}
	}

	Context "Main Script Logic" {
		It "Should set primary display to Zwift display when Zwift starts" {
			Mock -CommandName Get-ZwiftRunning -MockWith { return $true }
			Mock -CommandName Set-DisplayPrimary

			. "$PSScriptRoot\MonitorZwift.ps1"

			Assert-MockCalled -CommandName Set-DisplayPrimary -Exactly 1 -Scope It
		}

		It "Should set primary display to default display when Zwift closes" {
			Mock -CommandName Get-ZwiftRunning -MockWith { return $false }
			Mock -CommandName Set-DisplayPrimary

			. "$PSScriptRoot\MonitorZwift.ps1"

			Assert-MockCalled -CommandName Set-DisplayPrimary -Exactly 1 -Scope It
		}
	}
}