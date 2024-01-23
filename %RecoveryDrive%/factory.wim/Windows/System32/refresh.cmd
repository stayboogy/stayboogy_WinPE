cls
color 4f
@echo off
for %%I in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist %%I:\REFRESH.WIM set drive=%%I:
If NOT "%Drive%"=="" echo Found RECOVERY at %Drive%
IF "%Drive%"=="" (
echo ERROR - COULD NOT FIND RECOVERY IMAGE!
pause
backup.cmd
)

pushd %~dp0
echo.
echo READ CAREFULLY!!!!!!!!!!!!!!!!!!!!READ CAREFULLY
echo.
echo.
echo IF YOU CONTINUE THIS WILL YOUR RESTORE WINDOWS
echo TO THE SAME STATE OF THE LAST REFRESH IMAGE MADE
echo.
echo.
echo THIS WILL DELETE ALL YOUR CUSTOM PROGRAMS,
echo ALL YOUR CUSTOM SETTINGS, AND ALL USER FILES
echo.
echo.
echo IF YOU HAVE ENTERED THIS SYSTEM BY ERROR,
echo CLOSE THE WINDOW AND THE MACHINE WILL REBOOT.
echo.
echo.
set /P ANS=PROCEED WITH RECOVERY PROCESS? (Y/N) : 
REM Secret key to enable a backup to be taken - must be uppercase B
if "%ANS%"=="B" backup.cmd 
if /I "%ANS%"=="Y" goto :RST
wpeutil reboot

:RST

if exist E:\System.tag set DRV=E:
if exist D:\System.tag set DRV=D:
if exist C:\System.tag set DRV=C:
if exist E:\Recovery.tag set REC=E:
if exist D:\Recovery.tag set REC=D:
if exist C:\Recovery.tag set REC=C:
start warning.cmd
echo Cleaning and Prepping the System Drive for Restore - please wait...
echo sel vol %DRV%>> x:\dp.scr
echo format fs=ntfs label="Windows" quick>> x:\dp.scr
echo lis vol>> x:\dp.scr
echo exit>> x:\dp.scr
diskpart /s x:\dp.scr
echo Applying the image - please wait...
dism /apply-image /imagefile:%REC%\refresh.wim /index:1 /applydir:%DRV%\
wpeutil reboot





