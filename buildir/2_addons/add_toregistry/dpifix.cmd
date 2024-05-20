reg add "HKLM\PEDEFAULT\Control Panel\Desktop" /t REG_DWORD /v LogPixels /d 96 /f
reg add "HKLM\PEDEFAULT\Control Panel\Desktop" /v Win8DpiScaling /t REG_DWORD /d 0x00000001 /f
reg add "HKLM\PEDEFAULT\Control Panel\Desktop" /v DpiScalingVer /t REG_DWORD /d 0x00001018 /f
