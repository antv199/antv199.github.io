Table of Contents

[TOC]

---

## Uninstall Game Bar

To uninstall the Game Bar, open a PowerShell window with administrative privileges and run the following command:
```powershell
Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage
```

## Disable Game Bar
Even in an unistalled state (which will show a "We can't open this ms-gamingoverlay link dialogue"), Windows will still try to run the Game Bar in the background.

To disable it completely, open a PowerShell window with administrative privileges and run the following command:
```powershell
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR /f /t REG_DWORD /v "AppCaptureEnabled" /d 0
reg add HKEY_CURRENT_USER\System\GameConfigStore /f /t REG_DWORD /v "GameDVR_Enabled" /d 0
```