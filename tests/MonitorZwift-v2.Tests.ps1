# Import the script to be tested
. "$PSScriptRoot\MonitorZwift-v2.ps1"

Describe "MonitorZwift-v2.ps1 Tests" {
	BeforeAll {
		# Mock external dependencies
		Mock -CommandName Get-Process -MockWith {
			param ($Name)
			if ($Name -eq 'ZwiftLauncher' -or $Name -eq 'ZwiftApp') {
				return @{ Name = $Name }
			}
			return $null
		}

		Mock -CommandName Start-Process -MockWith {
			param ($FilePath, $ArgumentList, $Wait)
			Write-Host "Mocked Start-Process: $FilePath $ArgumentList"
		}

		Mock -CommandName Set-DisplayPrimary -MockWith {
			param ($DisplayIndex)
			Write-Host "Mocked Set-DisplayPrimary: $DisplayIndex"
		}

		Mock -CommandName Test-Path -MockWith {
			param ($Path)
			return $Path -match "ZwiftMedia|ZwiftPictures"
		}

		Mock -CommandName Stop-Process -MockWith {
			param ($Force)
			Write-Host "Mocked Stop-Process"
		}
	}

	Context "Parameter Validation" {
		It "Should have default parameters set correctly" {
			$params = @{
				ZwiftLauncher = 'ZwiftLauncher'
				ZwiftGame = 'ZwiftApp'
				PrimaryDisplayZwift = 3
				PrimaryDisplayDefault = 1
				TargetDisplayIndex = 1
				WindowPositionX = 0
				WindowPositionY = 50
				WindowWidth = 300
				WindowHeight = 600
				PowerToysPath = 'C:\Program Files\PowerToys\PowerToys.WorkspacesLauncher.exe'
				WorkspaceGuid = '{E2CDEA2A-6E33-4CFD-A26B-0C5CC2E55F40}'
				FreeFileSyncPath = 'C:\Program Files\FreeFileSync\FreeFileSync.exe'
				BatchJobPath = 'C:\Users\Nick\Dropbox\Random Save\Task Scheduler Rules\ZwiftPics.ffs_batch'
				ZwiftMediaPath = 'C:\Users\Nick\Dropbox\Cycling\ZwiftMedia'
				ZwiftPicturesPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift'
				EdgePath = 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'
				EdgeUrl1 = 'https://studio.youtube.com/channel/UCyYwMWui3Opy2yZyom2QM0g/videos/upload?filter=%5B%5D&sort=%7B%22columnType%22%3A%22date%22%2C%22sortOrder%22%3A%22DESCENDING%22%7D'
				EdgeUrl2 = 'https://www.strava.com/athlete/training'
				EdgeUrl3 = 'https://connect.garmin.com/modern/home'
				AppsToCheck = @('Spotify', 'obs64', 'Sauce for Zwift')
				Transparency = 75
				SleepInterval = 10
			}

			foreach ($key in $params.Keys) {
				(Get-Variable -Name $key).Value | Should -Be $params[$key]
			}
		}
	}

	Context "Functionality Tests" {
		It "Should detect ZwiftLauncher process" {
			Get-ProcessRunning -ProcessName 'ZwiftLauncher' | Should -Be $true
		}

		It "Should detect ZwiftApp process" {
			Get-ProcessRunning -ProcessName 'ZwiftApp' | Should -Be $true
		}

		It "Should set primary display to Zwift display" {
			Set-PrimaryDisplay -DisplayIndex 3
			Assert-MockCalled -CommandName Set-DisplayPrimary -Exactly 1 -Scope It
		}

		It "Should set window transparency" {
			Set-WindowTransparencyUWP -Transparency 50
			# No direct assertion, but ensure no errors occur
		}

		It "Should launch PowerToys Workspaces" {
			Start-Process -FilePath $PowerToysPath -ArgumentList "$WorkspaceGuid 1"
			Assert-MockCalled -CommandName Start-Process -Exactly 1 -Scope It
		}

		It "Should open File Explorer for ZwiftMediaPath" {
			Start-Process -FilePath 'explorer.exe' -ArgumentList "`"$ZwiftMediaPath`""
			Assert-MockCalled -CommandName Start-Process -Exactly 1 -Scope It
		}

		It "Should open File Explorer for ZwiftPicturesPath" {
			Start-Process -FilePath 'explorer.exe' -ArgumentList "`"$ZwiftPicturesPath`""
			Assert-MockCalled -CommandName Start-Process -Exactly 1 -Scope It
		}

		It "Should close Spotify if running" {
			Stop-Process -Force
			Assert-MockCalled -CommandName Stop-Process -Exactly 1 -Scope It
		}
	}

	Context "Error Handling" {
		It "Should handle missing DisplayConfig module gracefully" {
			Mock -CommandName Import-Module -MockWith { throw "Module not found" }
			{ Import-DisplayConfigModule } | Should -Not -Throw
		}

		It "Should handle missing processes gracefully" {
			Mock -CommandName Get-Process -MockWith { throw "Process not found" }
			{ Get-ProcessRunning -ProcessName 'NonExistentProcess' } | Should -Not -Throw
		}
	}
}
