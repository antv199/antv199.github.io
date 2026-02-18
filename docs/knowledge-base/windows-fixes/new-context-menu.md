- Stuff is from this [guide from ElevenForum.com](https://www.elevenforum.com/t/disable-show-more-options-context-menu-in-windows-11.1589/)

## Disabling the New Context Menu in Windows 11

### Using PowerShell

```powershell
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
```
