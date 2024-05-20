timeout /t 1
XCOPY "C:\Users\M\Desktop\*.*" "D:\SYNC\Desktop\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Documents\*.*" "D:\SYNC\Documents\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Pictures\*.*" "D:\SYNC\Pictures\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Downloads\*.*" "D:\SYNC\Downloads\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Music\*.*" "D:\SYNC\Music\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Videos\*.*" "D:\SYNC\Videos\" /C /S /K /D /H /Y /E
timeout /t 30
exit
