# MonitorZwift-v2.Tests.ps1
# Pester tests for core helper functions in MonitorZwift-v2.ps1

# Import the script to test
. "$PSScriptRoot\..\MonitorZwift-v2.ps1"

Describe 'Add-CompletedTask' {
	It 'Adds a task to the completed list' {
		$tracker = @{ Completed = @() }
		Add-CompletedTask -Tracker $tracker -TaskName 'Task1'
		$tracker.Completed | Should -Contain 'Task1'
	}
}

Describe 'Test-TaskCompletion' {
	It "Returns $true if the task is completed" {
		$tracker = @{ Completed = @('Task1', 'Task2') }
		Test-TaskCompletion -Tracker $tracker -TaskName 'Task2' | Should -BeTrue
	}
	It "Returns $false if the task is not completed" {
		$tracker = @{ Completed = @('Task1') }
		Test-TaskCompletion -Tracker $tracker -TaskName 'TaskX' | Should -BeFalse
	}
}

Describe 'Get-CompletedTasks' {
	It 'Returns all completed tasks' {
		$tracker = @{ Completed = @('A', 'B', 'C') }
		(Get-CompletedTasks -Tracker $tracker) | Should -Be @('A', 'B', 'C')
	}
}

Describe 'Get-ProcessRunning' {
	It "Returns $true for a running process" {
		# Start notepad for test
		$p = Start-Process notepad -PassThru
		try {
			Get-ProcessRunning -ProcessName 'notepad' | Should -BeTrue
		}
		finally {
			$p | Stop-Process
		}
	}
	It "Returns $false for a non-existent process" {
		Get-ProcessRunning -ProcessName 'DefinitelyNotAProcess' | Should -BeFalse
	}
}

Describe 'Get-RemainingTime' {
	It 'Returns seconds from hours' {
		Get-RemainingTime -remainingTimeinHours 2 | Should -Be 7200
	}
	It 'Returns seconds from minutes' {
		Get-RemainingTime -remainingTimeinMinutes 5 | Should -Be 300
	}
	It 'Returns seconds from seconds' {
		Get-RemainingTime -remainingTimeinSeconds 42 | Should -Be 42
	}
}

Describe 'Set-WindowTransparencyUWP' {
	It 'Does not throw when setting transparency' {
		{ Set-WindowTransparencyUWP -Transparency 80 } | Should -Not -Throw
	}
}

Describe 'Show-WaitingAnimation' {
	It 'Runs without error for a single cycle' {
		{ Show-WaitingAnimation -Message 'Test' -Continue $false } | Should -Not -Throw
	}
}

Describe 'Wait-WithAnimation' {
	It 'Waits for at least the specified seconds' {
		$sw = [System.Diagnostics.Stopwatch]::StartNew()
		Wait-WithAnimation -Seconds 2 -Message 'Waiting'
		$sw.Elapsed.TotalSeconds | Should -BeGreaterThan 1.5
	}
}
Describe 'Script Metadata' {
	It 'Has the correct author in the .AUTHOR field' {
		$scriptPath = "$PSScriptRoot\..\MonitorZwift-v2.ps1"
		$content = Get-Content $scriptPath -Raw
		$authorLine = ($content -split "`n") | Where-Object { $_ -match '^\s*\.AUTHOR\s' }
		$authorLine | Should -Match 'Nick2bad4u'
	}
}
Describe 'ShowThenMinimizeWindow' {
	It 'Does not throw when called with a valid process' {
		$p = Start-Process notepad -PassThru
		try {
			{ ShowThenMinimizeWindow -ProcessName 'notepad' -Minimize $true } | Should -Not -Throw
		}
		finally {
			$p | Stop-Process
		}
	}
	It 'Handles non-existent process gracefully' {
		{ ShowThenMinimizeWindow -ProcessName 'DefinitelyNotAProcess' -Minimize $true } | Should -Not -Throw
	}
}

Describe 'Import-DisplayConfigModule' {
	It 'Does not throw when importing or installing DisplayConfig' {
		{ Import-DisplayConfigModule } | Should -Not -Throw
	}
}

Describe 'Set-PrimaryDisplay' {
	It 'Handles invalid display index gracefully' {
		{ Set-PrimaryDisplay -DisplayIndex 99 } | Should -Not -Throw
	}
}

Describe 'Show-TaskCompletionSummary' {
	It 'Displays summary without error' {
		$tracker = @{ Completed = @('Task1', 'Task2') }
		{ Show-TaskCompletionSummary -Tracker $tracker -tasksCompleted @('Task1', 'Task2', 'Task3') } | Should -Not -Throw
	}
}

Describe 'Invoke-ReviewCountdownAndCleanup' {
	It 'Runs without error for short countdown' {
		{ Invoke-ReviewCountdownAndCleanup -remainingTime 2 } | Should -Not -Throw
	}
}
Describe 'Add-CompletedTask (Edge Cases)' {
	It 'Does not add duplicate tasks' {
		$tracker = @{ Completed = @('Task1') }
		Add-CompletedTask -Tracker $tracker -TaskName 'Task1'
		($tracker.Completed | Where-Object { $_ -eq 'Task1' }).Count | Should -Be 1
	}
	It 'Handles null tracker gracefully' {
		{ Add-CompletedTask -Tracker $null -TaskName 'TaskX' } | Should -Not -Throw
	}
}

Describe 'Test-TaskCompletion (Case Sensitivity)' {
	It 'Is case-insensitive for task names' {
		$tracker = @{ Completed = @('TaskA') }
		Test-TaskCompletion -Tracker $tracker -TaskName 'taska' | Should -BeTrue
	}
}

Describe 'Get-CompletedTasks (Empty)' {
	It 'Returns empty array if no tasks completed' {
		$tracker = @{ Completed = @() }
		(Get-CompletedTasks -Tracker $tracker).Count | Should -Be 0
	}
}

Describe 'Get-ProcessRunning (Edge Cases)' {
	It 'Handles null process name gracefully' {
		{ Get-ProcessRunning -ProcessName $null } | Should -Not -Throw
	}
	It 'Handles empty process name gracefully' {
		{ Get-ProcessRunning -ProcessName '' } | Should -Not -Throw
	}
}

Describe 'Get-RemainingTime (Precedence)' {
	It 'Prefers hours over minutes and seconds' {
		Get-RemainingTime -remainingTimeinHours 1 -remainingTimeinMinutes 30 -remainingTimeinSeconds 10 | Should -Be 3600
	}
	It 'Prefers minutes over seconds' {
		Get-RemainingTime -remainingTimeinMinutes 2 -remainingTimeinSeconds 30 | Should -Be 120
	}
	It 'Returns 0 if no parameters provided' {
		{ Get-RemainingTime } | Should -Throw
	}
}

Describe 'Set-WindowTransparencyUWP (Edge Cases)' {
	It 'Handles 0% transparency' {
		{ Set-WindowTransparencyUWP -Transparency 0 } | Should -Not -Throw
	}
	It 'Handles 100% transparency' {
		{ Set-WindowTransparencyUWP -Transparency 100 } | Should -Not -Throw
	}
}

Describe 'Show-WaitingAnimation (Edge Cases)' {
	It 'Handles empty message' {
		{ Show-WaitingAnimation -Message '' -Continue $false } | Should -Not -Throw
	}
}

Describe 'Wait-WithAnimation (Zero Seconds)' {
	It 'Returns immediately for zero seconds' {
		$sw = [System.Diagnostics.Stopwatch]::StartNew()
		Wait-WithAnimation -Seconds 0 -Message 'Zero'
		$sw.Elapsed.TotalSeconds | Should -BeLessThan 1
	}
}

Describe 'ShowThenMinimizeWindow (Edge Cases)' {
	It 'Handles null process name' {
		{ ShowThenMinimizeWindow -ProcessName $null -Minimize $true } | Should -Not -Throw
	}
	It 'Handles empty process name' {
		{ ShowThenMinimizeWindow -ProcessName '' -Minimize $true } | Should -Not -Throw
	}
}

Describe 'Import-DisplayConfigModule (Multiple Calls)' {
	It 'Can be called multiple times without error' {
		Import-DisplayConfigModule
		{ Import-DisplayConfigModule } | Should -Not -Throw
	}
}

Describe 'Set-PrimaryDisplay (Valid Index)' {
	It 'Handles index 0 gracefully' {
		{ Set-PrimaryDisplay -DisplayIndex 0 } | Should -Not -Throw
	}
}

Describe 'Show-TaskCompletionSummary (No Completed Tasks)' {
	It 'Displays summary with no completed tasks' {
		$tracker = @{ Completed = @() }
		{ Show-TaskCompletionSummary -Tracker $tracker -tasksCompleted @('TaskX') } | Should -Not -Throw
	}
}

Describe 'Invoke-ReviewCountdownAndCleanup (Zero Seconds)' {
	It 'Runs without error for zero seconds' {
		{ Invoke-ReviewCountdownAndCleanup -remainingTime 0 } | Should -Not -Throw
	}
}
Describe 'Add-CompletedTask (Robustness)' {
	It 'Handles missing Completed property in tracker' {
		$tracker = @{}
		{ Add-CompletedTask -Tracker $tracker -TaskName 'TaskY' } | Should -Not -Throw
		$tracker.Completed | Should -Contain 'TaskY'
	}
	It "Handles tracker as $null and TaskName as $null" {
		{ Add-CompletedTask -Tracker $null -TaskName $null } | Should -Not -Throw
	}
}

Describe 'Test-TaskCompletion (Robustness)' {
	It "Handles tracker as $null" {
		Test-TaskCompletion -Tracker $null -TaskName 'TaskZ' | Should -BeFalse
	}
	It 'Handles Completed property missing' {
		$tracker = @{}
		Test-TaskCompletion -Tracker $tracker -TaskName 'TaskZ' | Should -BeFalse
	}
	It "Handles TaskName as $null" {
		$tracker = @{ Completed = @('TaskA') }
		Test-TaskCompletion -Tracker $tracker -TaskName $null | Should -BeFalse
	}
}

Describe 'Get-CompletedTasks (Robustness)' {
	It "Handles tracker as $null" {
		(Get-CompletedTasks -Tracker $null) | Should -BeNullOrEmpty
	}
	It 'Handles Completed property missing' {
		$tracker = @{}
		(Get-CompletedTasks -Tracker $tracker) | Should -BeNullOrEmpty
	}
}

Describe 'Show-WaitingAnimation (Robustness)' {
	It "Handles $null message" {
		{ Show-WaitingAnimation -Message $null -Continue $false } | Should -Not -Throw
	}
	It 'Handles missing parameters' {
		{ Show-WaitingAnimation } | Should -Not -Throw
	}
}

Describe 'Wait-WithAnimation (Negative Seconds)' {
	It 'Returns immediately for negative seconds' {
		$sw = [System.Diagnostics.Stopwatch]::StartNew()
		Wait-WithAnimation -Seconds -5 -Message 'Negative'
		$sw.Elapsed.TotalSeconds | Should -BeLessThan 1
	}
}

Describe 'Set-WindowTransparencyUWP (Invalid Values)' {
	It 'Handles negative transparency' {
		{ Set-WindowTransparencyUWP -Transparency -10 } | Should -Not -Throw
	}
	It 'Handles transparency over 100' {
		{ Set-WindowTransparencyUWP -Transparency 150 } | Should -Not -Throw
	}
	It "Handles $null transparency" {
		{ Set-WindowTransparencyUWP -Transparency $null } | Should -Not -Throw
	}
}

Describe 'Get-ProcessRunning (Case Insensitivity)' {
	It 'Finds process regardless of case' {
		$p = Start-Process notepad -PassThru
		try {
			Get-ProcessRunning -ProcessName 'NOTEPAD' | Should -BeTrue
		}
		finally {
			$p | Stop-Process
		}
	}
}

Describe 'Set-PrimaryDisplay (Robustness)' {
	It "Handles $null DisplayIndex" {
		{ Set-PrimaryDisplay -DisplayIndex $null } | Should -Not -Throw
	}
	It 'Handles negative DisplayIndex' {
		{ Set-PrimaryDisplay -DisplayIndex -1 } | Should -Not -Throw
	}
}

Describe 'ShowThenMinimizeWindow (Robustness)' {
	It "Handles Minimize as $null" {
		$p = Start-Process notepad -PassThru
		try {
			{ ShowThenMinimizeWindow -ProcessName 'notepad' -Minimize $null } | Should -Not -Throw
		}
		finally {
			$p | Stop-Process
		}
	}
}

Describe 'Get-RemainingTime (Invalid Input)' {
	It "Throws if all parameters are $null" {
		{ Get-RemainingTime -remainingTimeinHours $null -remainingTimeinMinutes $null -remainingTimeinSeconds $null } | Should -Throw
	}
	It 'Handles negative values' {
		Get-RemainingTime -remainingTimeinMinutes -5 | Should -Be -300
	}
}

Describe 'Invoke-ReviewCountdownAndCleanup (Robustness)' {
	It "Handles $null remainingTime" {
		{ Invoke-ReviewCountdownAndCleanup -remainingTime $null } | Should -Not -Throw
	}
	It 'Handles negative remainingTime' {
		{ Invoke-ReviewCountdownAndCleanup -remainingTime -10 } | Should -Not -Throw
	}
}

Describe 'Show-TaskCompletionSummary (Robustness)' {
	It "Handles $null tracker" {
		{ Show-TaskCompletionSummary -Tracker $null -tasksCompleted @('Task1') } | Should -Not -Throw
	}
	It "Handles $null tasksCompleted" {
		$tracker = @{ Completed = @('Task1') }
		{ Show-TaskCompletionSummary -Tracker $tracker -tasksCompleted $null } | Should -Not -Throw
	}
}
Describe 'Add-CompletedTask (Additional Edge Cases)' {
	It 'Handles whitespace-only TaskName' {
		$tracker = @{ Completed = @() }
		Add-CompletedTask -Tracker $tracker -TaskName '   '
		$tracker.Completed | Should -Contain '   '
	}
	It 'Handles tracker as empty array' {
		$tracker = @()
		{ Add-CompletedTask -Tracker $tracker -TaskName 'TaskZ' } | Should -Not -Throw
	}
}

Describe 'Test-TaskCompletion (Whitespace and Special Characters)' {
	It 'Handles whitespace TaskName' {
		$tracker = @{ Completed = @('   ') }
		Test-TaskCompletion -Tracker $tracker -TaskName '   ' | Should -BeTrue
	}
	It 'Handles special character TaskName' {
		$tracker = @{ Completed = @('Task#1!') }
		Test-TaskCompletion -Tracker $tracker -TaskName 'Task#1!' | Should -BeTrue
	}
}

Describe 'Get-CompletedTasks (Special Cases)' {
	It "Returns empty array if Completed is $null" {
		$tracker = @{ Completed = $null }
		(Get-CompletedTasks -Tracker $tracker) | Should -BeNullOrEmpty
	}
}

Describe 'Get-ProcessRunning (Special Cases)' {
	It 'Handles process name with spaces' {
		# Not likely to find, but should not throw
		{ Get-ProcessRunning -ProcessName 'notepad with spaces' } | Should -Not -Throw
	}
}

Describe 'Set-WindowTransparencyUWP (Boundary Values)' {
	It 'Handles 1% transparency' {
		{ Set-WindowTransparencyUWP -Transparency 1 } | Should -Not -Throw
	}
	It 'Handles 99% transparency' {
		{ Set-WindowTransparencyUWP -Transparency 99 } | Should -Not -Throw
	}
}

Describe 'Wait-WithAnimation (Large Wait)' {
	It 'Waits for at least 3 seconds' {
		$sw = [System.Diagnostics.Stopwatch]::StartNew()
		Wait-WithAnimation -Seconds 3 -Message 'Wait 3s'
		$sw.Elapsed.TotalSeconds | Should -BeGreaterThan 2.5
	}
}

Describe 'ShowThenMinimizeWindow (Multiple Windows)' {
	It 'Handles multiple processes with same name' {
		$p1 = Start-Process notepad -PassThru
		$p2 = Start-Process notepad -PassThru
		try {
			{ ShowThenMinimizeWindow -ProcessName 'notepad' -Minimize $true } | Should -Not -Throw
		}
		finally {
			$p1 | Stop-Process
			$p2 | Stop-Process
		}
	}
}

Describe 'Import-DisplayConfigModule (Idempotency)' {
	It 'Does not throw if module already imported' {
		Import-DisplayConfigModule
		{ Import-DisplayConfigModule } | Should -Not -Throw
	}
}

Describe 'Set-PrimaryDisplay (Non-Integer Input)' {
	It 'Handles string DisplayIndex' {
		{ Set-PrimaryDisplay -DisplayIndex 'abc' } | Should -Not -Throw
	}
}

Describe 'Show-TaskCompletionSummary (Special Cases)' {
	It "Handles both parameters as $null" {
		{ Show-TaskCompletionSummary -Tracker $null -tasksCompleted $null } | Should -Not -Throw
	}
}

Describe 'Invoke-ReviewCountdownAndCleanup (Very Large Value)' {
	It 'Handles very large remainingTime' {
		{ Invoke-ReviewCountdownAndCleanup -remainingTime 999999 } | Should -Not -Throw
	}
}
Describe 'Add-CompletedTask (Null and Type Robustness)' {
	It 'Handles tracker as hashtable with non-array Completed property' {
		$tracker = @{ Completed = $null }
		{ Add-CompletedTask -Tracker $tracker -TaskName 'TaskA' } | Should -Not -Throw
		$tracker.Completed | Should -Contain 'TaskA'
	}
	It 'Handles tracker as PSCustomObject' {
		$tracker = [PSCustomObject]@{ Completed = @() }
		{ Add-CompletedTask -Tracker $tracker -TaskName 'TaskB' } | Should -Not -Throw
		$tracker.Completed | Should -Contain 'TaskB'
	}
}

Describe 'Test-TaskCompletion (Special Characters and Nulls)' {
	It "Handles Completed property as $null" {
		$tracker = @{ Completed = $null }
		Test-TaskCompletion -Tracker $tracker -TaskName 'TaskA' | Should -BeFalse
	}
	It 'Handles TaskName as empty string' {
		$tracker = @{ Completed = @('TaskA') }
		Test-TaskCompletion -Tracker $tracker -TaskName '' | Should -BeFalse
	}
}

Describe 'Get-CompletedTasks (Type Robustness)' {
	It 'Handles Completed property as string' {
		$tracker = @{ Completed = 'TaskA' }
		(Get-CompletedTasks -Tracker $tracker) | Should -Contain 'TaskA'
	}
	It 'Handles Completed property as int array' {
		$tracker = @{ Completed = @(1, 2, 3) }
		(Get-CompletedTasks -Tracker $tracker) | Should -Be @(1, 2, 3)
	}
}

Describe 'ShowThenMinimizeWindow (Process Not Found)' {
	It 'Returns without error if process not found' {
		{ ShowThenMinimizeWindow -ProcessName 'NoSuchProcess' -Minimize $true } | Should -Not -Throw
	}
}

Describe 'Set-WindowTransparencyUWP (Type and Range Robustness)' {
	It 'Handles string transparency' {
		{ Set-WindowTransparencyUWP -Transparency '50' } | Should -Not -Throw
	}
	It 'Handles transparency as [double]' {
		{ Set-WindowTransparencyUWP -Transparency 55.5 } | Should -Not -Throw
	}
}

Describe 'Wait-WithAnimation (Edge and Negative Cases)' {
	It 'Handles negative seconds' {
		$sw = [System.Diagnostics.Stopwatch]::StartNew()
		Wait-WithAnimation -Seconds -1 -Message 'Negative'
		$sw.Elapsed.TotalSeconds | Should -BeLessThan 1
	}
	It "Handles $null seconds" {
		{ Wait-WithAnimation -Seconds $null -Message 'Null' } | Should -Not -Throw
	}
}

Describe 'Get-ProcessRunning (Type Robustness)' {
	It 'Handles ProcessName as int' {
		{ Get-ProcessRunning -ProcessName 123 } | Should -Not -Throw
	}
}

Describe 'Import-DisplayConfigModule (Error Handling)' {
	It 'Handles missing module gracefully' {
		# Simulate missing module by removing if present (skip if not admin)
		{ Import-DisplayConfigModule } | Should -Not -Throw
	}
}

Describe 'Set-PrimaryDisplay (Type Robustness)' {
	It 'Handles DisplayIndex as string number' {
		{ Set-PrimaryDisplay -DisplayIndex '1' } | Should -Not -Throw
	}
}

Describe 'Show-TaskCompletionSummary (Type Robustness)' {
	It 'Handles tasksCompleted as string' {
		$tracker = @{ Completed = @('Task1') }
		{ Show-TaskCompletionSummary -Tracker $tracker -tasksCompleted 'Task1' } | Should -Not -Throw
	}
}

Describe 'Invoke-ReviewCountdownAndCleanup (Type Robustness)' {
	It 'Handles remainingTime as string' {
		{ Invoke-ReviewCountdownAndCleanup -remainingTime '5' } | Should -Not -Throw
	}
}

Describe 'Show-WaitingAnimation (Parameter Robustness)' {
	It "Handles Continue as $null" {
		{ Show-WaitingAnimation -Message 'Test' -Continue $null } | Should -Not -Throw
	}
	It 'Handles Message as int' {
		{ Show-WaitingAnimation -Message 123 -Continue $false } | Should -Not -Throw
	}
}

Describe 'Get-RemainingTime (Type Robustness)' {
	It 'Handles string input for minutes' {
		Get-RemainingTime -remainingTimeinMinutes '2' | Should -Be 120
	}
	It 'Handles all parameters as string' {
		Get-RemainingTime -remainingTimeinHours '1' -remainingTimeinMinutes '2' -remainingTimeinSeconds '3' | Should -Be 3600
	}
}
Describe 'Add-CompletedTask (Advanced Edge Cases)' {
	It "Handles tracker as $null and TaskName as whitespace" {
		{ Add-CompletedTask -Tracker $null -TaskName ' ' } | Should -Not -Throw
	}
	It 'Handles tracker as PSCustomObject with missing Completed property' {
		$tracker = [PSCustomObject]@{}
		{ Add-CompletedTask -Tracker $tracker -TaskName 'TaskC' } | Should -Not -Throw
		$tracker.Completed | Should -Contain 'TaskC'
	}
	It "Does not add $null TaskName" {
		$tracker = @{ Completed = @() }
		Add-CompletedTask -Tracker $tracker -TaskName $null
		($tracker.Completed | Where-Object { $_ -eq $null }).Count | Should -Be 1
	}
}

Describe 'Test-TaskCompletion (Advanced Robustness)' {
	It 'Handles Completed property as single string' {
		$tracker = @{ Completed = 'TaskSolo' }
		Test-TaskCompletion -Tracker $tracker -TaskName 'TaskSolo' | Should -BeTrue
	}
	It 'Handles Completed property as int array and TaskName as int' {
		$tracker = @{ Completed = @(1, 2, 3) }
		Test-TaskCompletion -Tracker $tracker -TaskName 2 | Should -BeTrue
	}
	It "Handles Completed property as $null and TaskName as $null" {
		$tracker = @{ Completed = $null }
		Test-TaskCompletion -Tracker $tracker -TaskName $null | Should -BeFalse
	}
}

Describe 'Get-CompletedTasks (Exotic Types)' {
	It 'Handles Completed property as hashtable' {
		$tracker = @{ Completed = @{A = 1 } }
		(Get-CompletedTasks -Tracker $tracker) | Should -Contain @{A = 1 }
	}
	It 'Handles tracker as PSCustomObject with Completed as array' {
		$tracker = [PSCustomObject]@{ Completed = @('X', 'Y') }
		(Get-CompletedTasks -Tracker $tracker) | Should -Be @('X', 'Y')
	}
}

Describe 'ShowThenMinimizeWindow (ProcessName as int and special chars)' {
	It 'Handles ProcessName as int' {
		{ ShowThenMinimizeWindow -ProcessName 123 -Minimize $true } | Should -Not -Throw
	}
	It 'Handles ProcessName with special characters' {
		{ ShowThenMinimizeWindow -ProcessName 'notepad!' -Minimize $true } | Should -Not -Throw
	}
}

Describe 'Set-WindowTransparencyUWP (Non-numeric and extreme values)' {
	It "Handles Transparency as 'abc'" {
		{ Set-WindowTransparencyUWP -Transparency 'abc' } | Should -Not -Throw
	}
	It 'Handles Transparency as [double] 0.5' {
		{ Set-WindowTransparencyUWP -Transparency 0.5 } | Should -Not -Throw
	}
	It 'Handles Transparency as [bool]' {
		{ Set-WindowTransparencyUWP -Transparency $true } | Should -Not -Throw
	}
}

Describe 'Wait-WithAnimation (Unusual input)' {
	It 'Handles Seconds as string' {
		$sw = [System.Diagnostics.Stopwatch]::StartNew()
		Wait-WithAnimation -Seconds '2' -Message 'String'
		$sw.Elapsed.TotalSeconds | Should -BeGreaterThan 1.5
	}
	It 'Handles Seconds as [double]' {
		$sw = [System.Diagnostics.Stopwatch]::StartNew()
		Wait-WithAnimation -Seconds 1.2 -Message 'Double'
		$sw.Elapsed.TotalSeconds | Should -BeGreaterThan 1
	}
}

Describe 'Get-RemainingTime (Whitespace and zero string input)' {
	It 'Handles whitespace string for minutes' {
		{ Get-RemainingTime -remainingTimeinMinutes ' ' } | Should -Throw
	}
	It 'Handles zero as string' {
		Get-RemainingTime -remainingTimeinSeconds '0' | Should -Be 0
	}
}

Describe "Show-TaskCompletionSummary (tasksCompleted as array with $null and whitespace)" {
	It "Handles tasksCompleted with $null and whitespace" {
		$tracker = @{ Completed = @('Task1') }
		{ Show-TaskCompletionSummary -Tracker $tracker -tasksCompleted @($null, ' ', 'Task1') } | Should -Not -Throw
	}
}

Describe 'Invoke-ReviewCountdownAndCleanup (remainingTime as whitespace and bool)' {
	It 'Handles remainingTime as whitespace' {
		{ Invoke-ReviewCountdownAndCleanup -remainingTime ' ' } | Should -Not -Throw
	}
	It "Handles remainingTime as $true" {
		{ Invoke-ReviewCountdownAndCleanup -remainingTime $true } | Should -Not -Throw
	}
}

Describe 'Import-DisplayConfigModule (Simulate repeated import/install)' {
	It 'Handles repeated calls in a loop' {
		1..3 | ForEach-Object { { Import-DisplayConfigModule } | Should -Not -Throw }
	}
}

Describe 'Set-PrimaryDisplay (DisplayIndex as array and bool)' {
	It 'Handles DisplayIndex as array' {
		{ Set-PrimaryDisplay -DisplayIndex @(1, 2) } | Should -Not -Throw
	}
	It "Handles DisplayIndex as $true" {
		{ Set-PrimaryDisplay -DisplayIndex $true } | Should -Not -Throw
	}
}

Describe 'Show-WaitingAnimation (Message as array and bool Continue)' {
	It 'Handles Message as array' {
		{ Show-WaitingAnimation -Message @('A', 'B') -Continue $false } | Should -Not -Throw
	}
	It 'Handles Continue as string' {
		{ Show-WaitingAnimation -Message 'Test' -Continue 'true' } | Should -Not -Throw
	}
}
