cls
@echo off
pushd %~dp0
dir refresh.wim
@echo.
echo MAKE A NEW SYSTEM REFRESH IMAGE AND
echo DELETE THE PREVIOUS REFRESH IMAGE???
echo.
echo.
set /P ANS=OK to continue (Y/N): 
if    "%ANS%"=="B" cmd
if /I "%ANS%"=="Y" goto :CONT
exit
:CONT
if exist refresh.wim del refresh.wim
if exist E:\System.tag set DRV=E:
if exist D:\System.tag set DRV=D:
if exist C:\System.tag set DRV=C:
if exist E:\Recovery.tag set REC=E:
if exist D:\Recovery.tag set REC=D:
if exist C:\Recovery.tag set REC=C:
dism /capture-image /imagefile:%REC%\refresh.wim /capturedir:%DRV% /name:WindowsRefresh /compress:fast
wpeutil reboot
