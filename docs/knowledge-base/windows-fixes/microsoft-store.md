## Installing the Microsoft Store

> **Note**: This is for Windows 10 LTSC and Windows 11 LTSC, which do not come with the Microsoft Store pre-installed. If you are using a regular version of Windows, the Microsoft Store should already be installed.

### Via a Custom Script
You can run the script made by the GitHub user [minihub](https://github.com/minihub),
since it covers the basic installation of the Microsoft Store and its dependencies.

[Get the script here](https://github.com/minihub/LTSC-Add-MicrosoftStore){ .md-button .md-button--primary }

<br>

### Via [Winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/)

In a Command Prompt or PowerShell, run the following command:
```powershell
winget install 9WZDNCRFJBMP​
```
and follow the prompts to install the Microsoft Store.

## Uninstalling the Microsoft Store
If you want to uninstall the Microsoft Store, open the PowerShell with administrator privileges and run the following command:

```powershell
Get-AppxPackage -allusers *WindowsStore* | Remove-Appxpackage​
```

If the command does not work, you can try the following command instead:

```powershell
Get-AppxPackage *WindowsStore* | Remove-Appxpackage​
```
