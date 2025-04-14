# Tests for PowerToys Awake section in MonitorZwift-v2.ps1
# Filename: tests/tests_PowerToysAwake.ps1

# Requires Pester 5+
function Add-CompletedTask {
	param (
		[hashtable]$Tracker,
		[string]$TaskName
	)
	$Tracker.CompletedTasks += $TaskName
}

Describe 'PowerToys Awake Section' {
    BeforeAll {
        # Import the script or dot-source the function if modularized
        $global:taskTracker = @{ CompletedTasks = @() }
    }

    Context 'When PowerToys Awake executable exists' {
        Mock Test-Path { $true }
        Mock Start-Process { $null }
        Mock Write-Host {}
        Mock Add-CompletedTask {}
        Mock Write-Error {}

        It 'Should set PowerToys Awake and log completion' {
            $PowerToysAwakePath = 'C:\Program Files\PowerToys\PowerToys.Awake.exe'
            $PowerToysAwakeTime = 3600
            $PowerToysAwakeArgs = "--time-limit $PowerToysAwakeTime --display-on true"

            # Simulate the code block
            if (Test-Path -LiteralPath $PowerToysAwakePath) {
                Write-Host "Setting PowerToys Awake to on..."
                Start-Process -FilePath $PowerToysAwakePath -ArgumentList $PowerToysAwakeArgs -WindowStyle Hidden -ErrorAction Stop
                Write-Host "PowerToys Awake settings applied."
                Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Awake set'
            }
            else {
                Write-Host "PowerToys Awake executable not found. Skipping."
                Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Awake skipped'
            }

            Assert-MockCalled Start-Process -Exactly 1
            Assert-MockCalled Add-CompletedTask -Exactly 1 -ParameterFilter { $TaskName -eq 'PowerToys Awake set' }
        }
    }

    Context 'When PowerToys Awake executable does not exist' {
        Mock Test-Path { $false }
        Mock Start-Process { $null }
        Mock Write-Host {}
        Mock Add-CompletedTask {}
        Mock Write-Error {}

        It 'Should skip PowerToys Awake and log skipped' {
            $PowerToysAwakePath = 'C:\Missing\PowerToys.Awake.exe'
            $PowerToysAwakeTime = 3600
            $PowerToysAwakeArgs = "--time-limit $PowerToysAwakeTime --display-on true"

            if (Test-Path -LiteralPath $PowerToysAwakePath) {
                Write-Host "Setting PowerToys Awake to on..."
                Start-Process -FilePath $PowerToysAwakePath -ArgumentList $PowerToysAwakeArgs -WindowStyle Hidden -ErrorAction Stop
                Write-Host "PowerToys Awake settings applied."
                Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Awake set'
            }
            else {
                Write-Host "PowerToys Awake executable not found. Skipping."
                Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Awake skipped'
            }

            Assert-MockCalled Start-Process -Exactly 0
            Assert-MockCalled Add-CompletedTask -Exactly 1 -ParameterFilter { $TaskName -eq 'PowerToys Awake skipped' }
        }
    }

    Context 'When Start-Process throws an error' {
        Mock Test-Path { $true }
        Mock Start-Process { throw 'Process failed' }
        Mock Write-Host {}
        Mock Write-Error {}
        Mock Add-CompletedTask {}

        It 'Should handle the error and log failure' {
            $PowerToysAwakePath = 'C:\Program Files\PowerToys\PowerToys.Awake.exe'
            $PowerToysAwakeTime = 3600
            $PowerToysAwakeArgs = "--time-limit $PowerToysAwakeTime --display-on true"
            try {
                if (Test-Path -LiteralPath $PowerToysAwakePath) {
                    Write-Host "Setting PowerToys Awake to on..."
                    Start-Process -FilePath $PowerToysAwakePath -ArgumentList $PowerToysAwakeArgs -WindowStyle Hidden -ErrorAction Stop
                    Write-Host "PowerToys Awake settings applied."
                    Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Awake set'
                }
                else {
                    Write-Host "PowerToys Awake executable not found. Skipping."
                    Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Awake skipped'
                }
            } catch {
                Write-Error "Error setting PowerToys Awake: $($_.Exception.Message)"
                Add-CompletedTask -Tracker $taskTracker -TaskName 'PowerToys Awake failed'
            }
            Assert-MockCalled Write-Error -Exactly 1
            Assert-MockCalled Add-CompletedTask -Exactly 1 -ParameterFilter { $TaskName -eq 'PowerToys Awake failed' }
        }
    }
}
