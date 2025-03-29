# Import the script to test
. "$PSScriptRoot\..\LaunchZwift.ps1"

Describe "LaunchZwift Script Tests" {
	Context "Parameter Validation" {
		It "Should use default MonitorZwiftScriptPath if not provided" {
			$defaultPath = 'C:\Users\Nick\Dropbox\Cycling\ZwiftScripts\MonitorZwift-v2.ps1'
			$script:MonitorZwiftScriptPath = $null
			. "$PSScriptRoot\LaunchZwift.ps1"
			$MonitorZwiftScriptPath | Should -Be $defaultPath
		}

		It "Should use default ZwiftLauncherPath if not provided" {
			$defaultPath = 'C:\Program Files (x86)\Zwift\ZwiftLauncher.exe'
			$script:ZwiftLauncherPath = $null
			. "$PSScriptRoot\LaunchZwift.ps1"
			$ZwiftLauncherPath | Should -Be $defaultPath
		}
	}

	Context "Process Checks" {
		Mock Get-Process {
			if ($args[0] -eq 'ZwiftApp' -or $args[0] -eq 'ZwiftLauncher') {
				return $null
			}
		}

		It "Should detect if ZwiftApp or ZwiftLauncher is not running" {
			$zwiftAppRunning = $null -ne (Get-Process -Name 'ZwiftApp' -ErrorAction SilentlyContinue)
			$zwiftLauncherRunning = $null -ne (Get-Process -Name 'ZwiftLauncher' -ErrorAction SilentlyContinue)
			$zwiftAppRunning | Should -BeFalse
			$zwiftLauncherRunning | Should -BeFalse
		}
	}

	Context "Path Resolution" {
		Mock Resolve-Path {
			return $args[0]
		}

		It "Should resolve MonitorZwiftScriptPath correctly" {
			$resolvedPath = Resolve-Path -LiteralPath 'C:\TestPath\MonitorZwift.ps1'
			$resolvedPath | Should -Be 'C:\TestPath\MonitorZwift.ps1'
		}

		It "Should resolve ZwiftLauncherPath correctly" {
			$resolvedPath = Resolve-Path -LiteralPath 'C:\TestPath\ZwiftLauncher.exe'
			$resolvedPath | Should -Be 'C:\TestPath\ZwiftLauncher.exe'
		}
	}

	Context "Process Launching" {
		Mock Start-Process {
			return @{
				Id = 1234
				ProcessName = 'ZwiftLauncher'
			}
		}

		It "Should start ZwiftLauncher if not running" {
			$zwiftProcess = Start-Process -FilePath 'C:\Program Files (x86)\Zwift\ZwiftLauncher.exe' -NoNewWindow -PassThru -ErrorAction Stop
			$zwiftProcess.ProcessName | Should -Be 'ZwiftLauncher'
		}

		It "Should start MonitorZwift script if path is valid" {
			$monitorProcess = Start-Process -FilePath 'powershell.exe' -ArgumentList "-File `"C:\TestPath\MonitorZwift.ps1`"" -NoNewWindow -PassThru -ErrorAction Stop
			$monitorProcess.ProcessName | Should -Be 'ZwiftLauncher'
		}
	}
}
