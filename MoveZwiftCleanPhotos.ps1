# Ensure the destination directory exists before moving the files
$cleanVersionsPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\clean_versions'
if (-not (Test-Path -Path $cleanVersionsPath)) {
	New-Item -ItemType Directory -Path $cleanVersionsPath
}

# Move clean Zwift photos to the clean_versions directory
Move-Item -Path 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\*clean.jpg' -Destination $cleanVersionsPath
