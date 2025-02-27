# Define paths
$destinationCleanVersionsPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\clean_versions'
$sourceCleanPhotosPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\*clean.jpg'

# Ensure the destination directory exists before moving the files
if (-not (Test-Path -Path $destinationCleanVersionsPath)) {
	try {
		New-Item -ItemType Directory -Path $destinationCleanVersionsPath -ErrorAction 'Stop' | Out-Null
		Write-Verbose "Created directory: $destinationCleanVersionsPath"
	}
	catch {
		Write-Error "Failed to create directory: $($_.Exception.Message)"
		exit 1
	}
}

# Move clean Zwift photos to the clean_versions directory
try {
	$files = Get-ChildItem -Path $sourceCleanPhotosPath
	$filesMoved = @()

	foreach ($file in $files) {
		$destinationFile = Join-Path -Path $destinationCleanVersionsPath -ChildPath $file.Name
		if (-not (Test-Path -Path $destinationFile)) {
			$movedFile = Move-Item -Path $file.FullName -Destination $destinationFile -Force -ErrorAction 'Stop' -PassThru
			$filesMoved += $movedFile
		}
		else {
			Write-Verbose "File $($file.Name) already exists in the destination. Skipping."
		}
	}

	$filesMovedCount = $filesMoved.Count
	if ($filesMovedCount -gt 0) {
		Write-Output "Moved $filesMovedCount files to $destinationCleanVersionsPath"
	}
	else {
		Write-Output 'No files found to move or all files already exist in the destination.'
	}
}
catch {
	Write-Error "Failed to move files: $($_.Exception.Message)"
}
