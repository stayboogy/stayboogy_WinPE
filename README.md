# stayboogy_WinPE-AutoRestore

- OEM-esque WinPE AutoRestore system

- supports x86 / x64, supports BIOS / UEFI setups

- supports updating recovery image mas you add things to your system

- requires no-third party applications, uses only what is provided in the WAIK

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
![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-recdrive.png)


## 5) copy the following file to your Windows System partition:

```javascript
System.tag
```
![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-sysdrive.png)


## 6) use your chosen method to add your WinPE boot.wim in your bcdstore as your second boot option

![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-bcd.png)


## 7) reboot your system and choose your new Recovery Boot Option

![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-bootm.png)

![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-bootm1.png)


## 8) on first boot of the Recovery System, it will fail to find a refresh image and prompt to make a new one

![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-firstboot.png)


## 9) make a new refresh image using the system, it will reboot when finished

![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-imagesaved.png)


## 10) reboot back into your Recovery Boot Option

![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-bootm1.png)


## 11) when it asks to restore the refresh image, answer "Y" to restore and test and verify your backup made previously

![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-restorestart.png)
![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-restore.png)
![App Screenshot](https://codeberg.org/stayboogy/stayboogy_WinPE-AutoRestore/raw/branch/main/Screenshots/screen-restoredone.png)


## 12) in the future, to create a new refresh image with all your new updated settings and programs, just reboot into the Recovery System again, and answer "B" when it asks to restore the refresh image and it will make a new refresh image instead of restoring the one you have already.

## 13) ENJOY