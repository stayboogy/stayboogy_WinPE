timeout /t 1
XCOPY "C:\TOOLS\*.*" "D:\SYNC\TOOLS\" /C /S /K /D /H /Y /E
timeout /t 30
exit
