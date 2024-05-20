@echo off
set ArchDir=x86
if %PROCESSOR_ARCHITECTURE%==AMD64 set ArchDir=x64
start "" "%~dp0%ArchDir%\NSudo.exe"
exit
