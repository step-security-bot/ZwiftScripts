# Define paths for testing
$validDestinationCleanVersionsPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\clean_versions'
$validSourceCleanPhotosPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\*clean.jpg'
$invalidDestinationCleanVersionsPath = 'C:\InvalidPath\clean_versions'
$invalidSourceCleanPhotosPath = 'C:\InvalidPath\*clean.jpg'
$existingFileInDestination = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\clean_versions\test_clean.jpg'

# Create a test environment
function Setup-TestEnvironment {
    param (
        [string]$DestinationPath,
        [string]$SourcePath,
        [string]$ExistingFilePath
    )

    # Create destination directory if it does not exist
    if (-not (Test-Path -Path $DestinationPath)) {
        New-Item -ItemType Directory -Path $DestinationPath -Force | Out-Null
    }

    # Create a sample source file
    $sourceFile = $SourcePath.Replace('*clean.jpg', 'test_clean.jpg')
    New-Item -ItemType File -Path $sourceFile -Force | Out-Null

    # Create an existing file in the destination if specified
    if ($ExistingFilePath) {
        New-Item -ItemType File -Path $ExistingFilePath -Force | Out-Null
    }
}

# Cleanup the test environment
function Cleanup-TestEnvironment {
    param (
        [string]$DestinationPath,
        [string]$SourcePath,
        [string]$ExistingFilePath
    )

    # Remove source file
    $sourceFile = $SourcePath.Replace('*clean.jpg', 'test_clean.jpg')
    Remove-Item -Path $sourceFile -Force -ErrorAction SilentlyContinue

    # Remove existing file in the destination if specified
    if ($ExistingFilePath) {
        Remove-Item -Path $ExistingFilePath -Force -ErrorAction SilentlyContinue
    }

    # Remove destination directory if it is empty
    if ((Get-ChildItem -Path $DestinationPath -Force -ErrorAction SilentlyContinue).Count -eq 0) {
        Remove-Item -Path $DestinationPath -Force -ErrorAction SilentlyContinue
    }
}

# Function to test the main script
function Test-MainScript {
    param (
        [string]$DestinationCleanVersionsPath,
        [string]$SourceCleanPhotosPath
    )

    # Create a temporary script to test the main script
    $tempScript = @"
# Define paths
`$destinationCleanVersionsPath = '$DestinationCleanVersionsPath'
`$sourceCleanPhotosPath = '$SourceCleanPhotosPath'

# Ensure the destination directory exists before moving the files
if (-not (Test-Path -Path `$destinationCleanVersionsPath)) {
    try {
        New-Item -ItemType Directory -Path `$destinationCleanVersionsPath -ErrorAction 'Stop' | Out-Null
        Write-Verbose "Created directory: `$destinationCleanVersionsPath"
    }
    catch {
        Write-Error "Failed to create directory: `$(`$_.Exception.Message)"
        exit 1
    }
}

# Move clean Zwift photos to the clean_versions directory
try {
    `$files = Get-ChildItem -Path `$sourceCleanPhotosPath
    `$filesMoved = @()

    foreach (`$file in `$files) {
        `$destinationFile = Join-Path -Path `$destinationCleanVersionsPath -ChildPath `$file.Name
        if (-not (Test-Path -Path `$destinationFile)) {
            `$movedFile = Move-Item -Path `$file.FullName -Destination `$destinationFile -Force -ErrorAction 'Stop' -PassThru
            `$filesMoved += `$movedFile
        }
        else {
            Write-Verbose "File `$(`$file.Name) already exists in the destination. Skipping."
        }
    }

    `$filesMovedCount = `$filesMoved.Count
    if (`$filesMovedCount -gt 0) {
        Write-Output "Moved `$filesMovedCount files to `$destinationCleanVersionsPath"
    }
    else {
        Write-Output 'No files found to move or all files already exist in the destination.'
    }
}
catch {
    Write-Error "Failed to move files: `$(`$_.Exception.Message)"
}
"@

    # Save the temporary script to a file
    $tempScriptPath = [System.IO.Path]::GetTempFileName() + ".ps1"
    Set-Content -Path $tempScriptPath -Value $tempScript

    # Execute the temporary script
    try {
        $output = & powershell.exe -File $tempScriptPath -ErrorAction Stop
        Write-Output $output
    }
    catch {
        Write-Error "Test failed: $($_.Exception.Message)"
    }
    finally {
        # Clean up the temporary script file
        Remove-Item -Path $tempScriptPath -Force
    }
}

# Test cases
Write-Output "Testing with valid paths..."
Setup-TestEnvironment -DestinationPath $validDestinationCleanVersionsPath -SourcePath $validSourceCleanPhotosPath
Test-MainScript -DestinationCleanVersionsPath $validDestinationCleanVersionsPath -SourceCleanPhotosPath $validSourceCleanPhotosPath
Cleanup-TestEnvironment -DestinationPath $validDestinationCleanVersionsPath -SourcePath $validSourceCleanPhotosPath

Write-Output "Testing with invalid destination path..."
Test-MainScript -DestinationCleanVersionsPath $invalidDestinationCleanVersionsPath -SourceCleanPhotosPath $validSourceCleanPhotosPath

Write-Output "Testing with invalid source path..."
Test-MainScript -DestinationCleanVersionsPath $validDestinationCleanVersionsPath -SourceCleanPhotosPath $invalidSourceCleanPhotosPath

Write-Output "Testing with existing file in destination..."
Setup-TestEnvironment -DestinationPath $validDestinationCleanVersionsPath -SourcePath $validSourceCleanPhotosPath -ExistingFilePath $existingFileInDestination
Test-MainScript -DestinationCleanVersionsPath $validDestinationCleanVersionsPath -SourceCleanPhotosPath $validSourceCleanPhotosPath
Cleanup-TestEnvironment -DestinationPath $validDestinationCleanVersionsPath -SourcePath $validSourceCleanPhotosPath -ExistingFilePath $existingFileInDestination