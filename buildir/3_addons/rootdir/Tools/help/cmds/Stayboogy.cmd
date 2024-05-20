reg import C:\Stayboogy\Setup\CMDHereAsAdmin.reg
reg import C:\Stayboogy\Setup\CMDAlwaysAdmin.reg
reg import C:\Stayboogy\Setup\ComputerName.reg
reg import C:\Stayboogy\Setup\CopyAsPath.reg
reg import C:\Stayboogy\Setup\DisableStorageSense.reg
reg import C:\Stayboogy\Setup\NoDumpStackLog.reg
reg import C:\Stayboogy\Setup\NoNotifications.reg
reg import C:\Stayboogy\Setup\NoOpenFileWarnings.reg
reg import C:\Stayboogy\Setup\OpenWithNotepad.reg
reg import C:\Stayboogy\Setup\PowershellUnrestricted.reg
reg import C:\Stayboogy\Setup\TakeOwnership.reg
reg import C:\Stayboogy\Setup\TimeSyncUTC.reg
powercfg.exe /hibernate off
powercfg.exe /import C:\Stayboogy\Setup\high-performance.pow
powershell.exe "Get-appxpackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage"
powershell.exe "Get-AppxPackage | Out-GridView -PassThru | Remove-AppxPackage"
powershell.exe "Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux"
reg import C:\Stayboogy\Setup\WSLImportAfterReboot.reg
move C:\Stayboogy\Tools C:\Tools
move C:\Tools\Tools C:\Users\M\Desktop\Tools
reg import C:\Tools\NotePad2\x64\NotepadReplace.reg
reg import C:\Tools\UltraISO\registration.reg
C:\Tools\7-Zip\x64\7zFM.exe
