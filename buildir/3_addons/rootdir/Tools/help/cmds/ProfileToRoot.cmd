timeout /t 1
XCOPY "C:\Users\M\Desktop\*.*" "D:\Home\Desktop\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Documents\*.*" "D:\Home\Documents\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Pictures\*.*" "D:\Home\Pictures\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Downloads\*.*" "D:\Home\Downloads\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Music\*.*" "D:\Home\Music\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Videos\*.*" "D:\Home\Videos\" /C /S /K /D /H /Y /E
timeout /t 21
exit
