cls
@echo off
pushd %~dp0
dir refresh.wim
@echo.
echo CREATE NEW SYSTEM REFRESH IMAGE???
echo.
echo.
set /P ANS=OK to continue (Y/N): 
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
echo.
echo.
echo THIS COULD TAKE A WHILE
echo.
echo PLEASE WAIT
echo.
echo DO NOT INTERRUPT
echo.
echo SYSTEM WILL REBOOT WHEN FINISHED
dism /capture-image /imagefile:%REC%\refresh.wim /capturedir:%DRV% /name:WindowsRefresh /compress:fast
wpeutil reboot
