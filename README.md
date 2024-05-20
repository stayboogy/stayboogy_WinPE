# stayboogy WinPE AutoRestore Recovery

- OEM-esque WinPE AutoRestore system

- supports x86 / x64, supports BIOS / UEFI setups

- supports updating recovery image as you add things to your system

- requires no-third party applications, uses only what is provided in the WAIK

# Complete Video Tutorial

- https://rumble.com/v48a635-stayboogy-winpe-autorestore-v1.13.html

# How to Use

## 1) create a basic WinPE iso from the WAIK - does not require any added components not even DismCmdlets

## 2) mount your WinPE boot.wim and copy these files to WinPE\Windows\System32\

```javascript
backup.cmd
refresh.cmd
startnet.cmd
warning.cmd
```
## 3) commit changes and unmount your WinPE boot.wim

## 4) copy the following files to your chosen Recovery Drive on your system:

```javascript
WinPE boot.wim
Recovery.tag
boot.sdi
```
![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-recdrive.png)


## 5) copy the following file to your Windows System partition:

```javascript
System.tag
```
![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-sysdrive.png)


## 6) use your chosen method to add your WinPE boot.wim in your bcdstore as your second boot option

- Bootice v1.3.4 is required - earlier versions will not work properly - make sure you have the proper drive choosen to locate the boot.sdi file especially

or do it manually:

- in code below, replace {guid1}, {guid2}, X:, respectively before running the command

```javascript
bcdedit /set {bootmgr} displaybootmenu yes

bcdedit /timeout 7



bcdedit.exe /store C:\Boot\BCD /create /device

command output = {guid1}



bcdedit.exe /store C:\Boot\BCD /set {guid1} ramdisksdidevice partition=X:

bcdedit.exe /store C:\Boot\BCD /set {guid1} ramdisksdipath \boot.sdi



bcdedit.exe /store C:\Boot\BCD /create /d "Recovery" /application osloader

command output = {guid2}



bcdedit.exe /store C:\Boot\BCD /set {guid2} systemroot \Windows

bcdedit.exe /store C:\Boot\BCD /set {guid2} winpe yes

bcdedit.exe /store C:\Boot\BCD /set {guid2} osdevice ramdisk=[X:]\factory.wim,{guid1}

bcdedit.exe /store C:\Boot\BCD /set {guid2} device ramdisk=[X:]\factory.wim,{guid1}

bcdedit.exe /store C:\Boot\BCD /displayorder {guid2} /addlast
```

![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-bcd.png)


## 7) reboot your system and choose your new Recovery Boot Option

![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-bootm.png)

![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-bootm1.png)


## 8) on first boot of the Recovery System, it will fail to find a refresh image and prompt to make a new one

![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-firstboot.png)


## 9) make a new refresh image using the system, it will reboot when finished

![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-imagesaved.png)


## 10) reboot back into your Recovery Boot Option

![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-bootm1.png)


## 11) when it asks to restore the refresh image, answer "Y" to restore and test and verify your backup made previously

![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-restorestart.png)
![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-restore.png)
![App Screenshot](https://github.com/stayboogy/stayboogy_WinPE/blob/92ccce2b0733eb1cd5844232d1e97249a31540f0/Screenshots/screen-restoredone.png)


## 12) in the future, to create a new refresh image with all your new updated settings and programs, just reboot into the Recovery System again, and answer "B" when it asks to restore the refresh image and it will make a new refresh image instead of restoring the one you have already.

## 13) ENJOY