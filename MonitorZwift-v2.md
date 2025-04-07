# Overview of MonitorZwift-v2 Script

This script performs the following tasks:

- **Window Management**:
  - Resizes and positions the PowerShell window.
  - Sets window transparency for the PowerShell window.
- **Path Resolution**:
  - Resolves paths for Zwift Launcher and Monitor Script.
- **Application Automation**:
  - Starts Zwift Launcher and monitors Zwift game processes.
  - Sets the primary display for Zwift and restores it after the session.
  - Launches PowerToys Workspaces for Zwift if required.
- **Zwift Game Monitoring**:
  - Waits for Zwift game to start, maximizes its window, and monitors until it closes.
- **Application Cleanup**:
  - Closes additional applications like Sauce for Zwift, OBS, and Spotify.
- **File Synchronization**:
  - Synchronizes Zwift-related files using FreeFileSync.
- **Browser Automation**:
  - Launches Microsoft Edge in app mode with specified URLs.
- **File Explorer Integration**:
  - Opens File Explorer for Zwift media and pictures directories.
- **Task Validation**:
  - Validates task completion and provides a review window before closing.

---

## Features

- **Display Management**:
  - Automatically sets the primary display for Zwift and restores it after the session.
- **Application Automation**:
  - Launches Zwift Launcher and monitors Zwift game processes.
  - Closes additional applications like Sauce for Zwift, OBS, and Spotify.
  - Launches PowerToys Workspaces for Zwift if required.
- **OBS Integration**:
  - Stops OBS recording using a configurable hotkey.
  - Closes OBS gracefully or forcefully if needed.
- **File Synchronization**:
  - Runs a FreeFileSync batch job to synchronize Zwift-related files after the session.
- **Browser Automation**:
  - Launches Microsoft Edge in app mode with specified URLs (e.g., YouTube Studio, Strava, Garmin Connect).
- **File Explorer Integration**:
  - Opens File Explorer for Zwift media and pictures directories.
- **Customizable Settings**:
  - Configurable display indices, window positions, and dimensions.
  - Adjustable transparency for the PowerShell window.
  - Customizable hotkeys for OBS recording and closing.
- **Task Validation**:
  - Tracks and validates the completion of all tasks, providing a summary at the end.
- **User-Friendly Animations**:
  - Includes waiting animations and countdown timers for a better user experience.

---

### Requirements

To ensure the script runs smoothly and performs all tasks as intended, the following requirements must be met:

- **PowerShell**: Version 5.1 or later.
- **External Dependencies**:
  - DisplayConfig module (automatically installed if missing).
  - Applications like PowerToys, FreeFileSync, and OBS (optional but recommended).
- **Configuration**:
  - Ensure all paths and parameters are correctly configured before running the script.

### Examples

The following examples demonstrate how to run the script with default settings or customize it for specific use cases by providing various parameters.

**Run with default settings**:

```powershell
    .\MonitorZwift-v2.ps1
```

**Run with custom Zwift Launcher path and display settings**:

```powershell
    .\MonitorZwift-v2.ps1 -ZwiftLauncherPath "C:\Zwift\ZwiftLauncher.exe" -PrimaryDisplayZwift 2
```

**Run with custom window transparency and dimensions**:

```powershell
   .\MonitorZwift-v2.ps1 -Transparency 50 -WindowWidth 400 -WindowHeight 800
```

**Run with custom OBS hotkey**:

```powershell
  .\MonitorZwift-v2.ps1 -OBSHotkey "Ctrl+Shift+R"
```

**Run with custom FreeFileSync batch job**:

```powershell
  .\MonitorZwift-v2.ps1 -FreeFileSyncBatchJob "C:\Path\To\BatchJob.ffbatch"
```

**Run with custom URLs for Microsoft Edge**:

```powershell
  .\MonitorZwift-v2.ps1 -EdgeURLs @("https://studio.youtube.com", "https://www.strava.com", "https://connect.garmin.com")
```

**Run with custom Sauce for Zwift path**:

```powershell
  .\MonitorZwift-v2.ps1 -SauceForZwiftPath "C:\Path\To\SauceForZwift.exe"
```

**Run with custom OBS path**:

```powershell
  .\MonitorZwift-v2.ps1 -OBSPath "C:\Path\To\OBS.exe"
```
