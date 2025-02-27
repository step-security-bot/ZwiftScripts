# Import the Pester module
Import-Module Pester

Describe "LaunchZwift.ps1" {
	# Test if the script resolves paths correctly
	It "Should resolve MonitorZwiftScriptPath" {
		$MonitorZwiftScriptPath = 'C:\Users\Nick\Dropbox\Cycling\ZwiftScripts\MonitorZwift.ps1'
		$result = Resolve-Path -LiteralPath $MonitorZwiftScriptPath -ErrorAction Stop
		$result.ProviderPath | Should -Be $MonitorZwiftScriptPath
	}

	It "Should resolve ZwiftLauncherPath" {
		$ZwiftLauncherPath = 'C:\Program Files (x86)\Zwift\ZwiftLauncher.exe'
		$result = Resolve-Path -LiteralPath $ZwiftLauncherPath -ErrorAction Stop
		$result.ProviderPath | Should -Be $ZwiftLauncherPath
	}

	# Test if the script handles non-existent paths correctly
	It "Should handle non-existent MonitorZwiftScriptPath" {
		$MonitorZwiftScriptPath = 'C:\InvalidPath\MonitorZwift.ps1'
		{ Resolve-Path -LiteralPath $MonitorZwiftScriptPath -ErrorAction Stop } | Should -Throw
	}

	It "Should handle non-existent ZwiftLauncherPath" {
		$ZwiftLauncherPath = 'C:\InvalidPath\ZwiftLauncher.exe'
		{ Resolve-Path -LiteralPath $ZwiftLauncherPath -ErrorAction Stop } | Should -Throw
	}
}

# Run the tests
Invoke-Pester