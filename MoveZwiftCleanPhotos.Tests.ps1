# Import the script to be tested
. "$PSScriptRoot/MoveZwiftCleanPhotos.ps1"

Describe "MoveZwiftCleanPhotos" {
	Context "When the destination directory does not exist" {
		It "Should create the destination directory" {
			# Arrange
			$destinationCleanVersionsPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\clean_versions'
			Remove-Item -Path $destinationCleanVersionsPath -Recurse -Force -ErrorAction SilentlyContinue

			# Act
			. "$PSScriptRoot/MoveZwiftCleanPhotos.ps1"

			# Assert
			Test-Path -Path $destinationCleanVersionsPath | Should -Be $true
		}
	}

	Context "When there are clean photos to move" {
		It "Should move clean photos to the destination directory" {
			# Arrange
			$sourceCleanPhotosPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\test_clean.jpg'
			$destinationCleanVersionsPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\clean_versions'
			New-Item -ItemType File -Path $sourceCleanPhotosPath -Force | Out-Null

			# Act
			. "$PSScriptRoot/MoveZwiftCleanPhotos.ps1"

			# Assert
			$destinationFile = Join-Path -Path $destinationCleanVersionsPath -ChildPath 'test_clean.jpg'
			Test-Path -Path $destinationFile | Should -Be $true

			# Cleanup
			Remove-Item -Path $sourceCleanPhotosPath -Force
			Remove-Item -Path $destinationFile -Force
		}
	}

	Context "When there are no clean photos to move" {
		It "Should output a message indicating no files were moved" {
			# Arrange
			$sourceCleanPhotosPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\*clean.jpg'
			$destinationCleanVersionsPath = 'C:\Users\Nick\Dropbox\PC (2)\Pictures\Zwift\clean_versions'
			Remove-Item -Path $sourceCleanPhotosPath -Recurse -Force -ErrorAction SilentlyContinue

			# Act
			$output = . "$PSScriptRoot/MoveZwiftCleanPhotos.ps1"

			# Assert
			$output | Should -Contain 'No files found to move or all files already exist in the destination.'
		}
	}
}