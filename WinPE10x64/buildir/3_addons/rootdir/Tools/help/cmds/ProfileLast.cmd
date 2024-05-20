timeout /t 1
XCOPY "C:\Users\M\Desktop\*.*" "E:\USER_LAST\Desktop\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Documents\*.*" "E:\USER_LAST\Documents\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Pictures\*.*" "E:\USER_LAST\Pictures\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Downloads\*.*" "E:\USER_LAST\Downloads\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Music\*.*" "E:\USER_LAST\Music\" /C /S /K /D /H /Y /E
XCOPY "C:\Users\M\Videos\*.*" "E:\USER_LAST\Videos\" /C /S /K /D /H /Y /E
timeout /t 30
exit
