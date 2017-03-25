---
layout: default
title: Some notes on computer system administration
---

# Linux/Ubuntu OS

## Ubuntu 16.04 becomes too slow to shut down
This problem occurs when I freshly installed the Ubuntu 16.04 Gnome system.
Whenever I press the Shutdown button on the Power Off menu, it will take up to 1min 30sec to respond.

Turns out, it is related to the CUPS remote printers from the cups-browsed service which automatically add network printers to the computer.
I don't need this automatic printer adding function and hence disabled this service, and then everything works fine again.
Reference is [here](http://askubuntu.com/questions/760952/slow-shutdown-on-ubuntu-16-04-lts-stopping-thermal-daemon-running-fit-make-remo).

*Update*: Without disabling the `CUPS` service, this bug seems having been fixed with `cups-filters` v1.11.4-1 yet not released in the official Ubuntu 16.04 repository. A workaround solution to install the latest version of `cups-filters` and its dependencies can be found in [this solution](http://askubuntu.com/a/896655/390708). 

## Unable to mount NTFS disks automatically on startup.
When the Ubuntu 16.04 started, I got the following error message:
```
Unable to access “My Drive”

Error mounting /dev/sdb4 at /media/D Center: Command-line `mount -t "ntfs" -o "uhelper=udisks2,nodev,nosuid,uid=1000,gid=1000,dmask=0077,fmask=0177" "/dev/sdb4" "/media/D Center"' exited with non-zero exit status 14: The disk contains an unclean file system (0, 0).
Metadata kept in Windows cache, refused to mount.
Failed to mount '/dev/sdb4': Operation not permitted
The NTFS partition is in an unsafe state. Please resume and shutdown
Windows fully (no hibernation or fast restarting), or mount the volume
read-only with the 'ro' mount option
```
A solution according to [this source](http://askubuntu.com/questions/462381/cant-mount-ntfs-drive-the-disk-contains-an-unclean-file-system) is to run the following command, for example,
```
sudo ntfsfix /dev/sdb4
```

The root cause of this issue might be related to the fast-booting feature of Windows 10.
Therefore, to fix it for all future events, the fast-booting feature should be turned off as instructed [here](http://superuser.com/questions/1152001/shutdown-windows-10-truly-for-a-dual-booting-system).
A detailed explanation on this issue can be found [here](http://askubuntu.com/questions/145902/unable-to-mount-windows-ntfs-filesystem-due-to-hibernation).

## Keep Linux kernel updated on a LTS Ubuntu OS
Normally, a LTS Ubuntu OS will stick to a particular kernel series to keep the OS stable.
However, this doesn't mean the Ubuntu OS doesn't update their supported Linux kernel series on their repository.
In fact, for example, Ubuntu-16.04-1 was released with kernel 4.4.X, but then Ubuntu-16.04-2 was released with kernel 4.8.X.
The default behavior of a local Ubuntu-16.04-0 distribution is to stick to the initially installed kernel series before the OS is upgraded to a new distribution like Ubuntu 18.04 LTS. To change this default behavior and keep receiving updated Ubuntu's officially supported kernel series on a LTS Ubuntu distribution, one can enable the HWE stacks by installing the following packages:
```
sudo apt install linux-generic-hwe-16.04 linux-lowlatency-hwe-16.04
```
according to the [official rolling LTS enablement stack page for Ubuntu 16.04 LTS distribution](https://wiki.ubuntu.com/Kernel/RollingLTSEnablementStack).
The kernel update will keep rolling in the first two years after the distribution was initally released.

## Mouse scrolls too fast on Chrome browser
If one scroll of the mouse on the Chrome brower can go a far distance on a page, it might have been affected by [this Ubuntu bug](https://bugs.launchpad.net/ubuntu/+bug/971321).
This only affects Chrome and a few wireless mouse brands including Microsoft.
A workaround before the bug is fixed is to unplug and replug the wireless receiver of the mouse.

# Notes on using some common tools
## Git
* One of the common scenario of using Git is to make fixes to a repo *A* not belonging to me but I have already customized the source in the repo for my personal usage before hand.
In this case, I can make a new branch called *patch-1*, for example, in my personal repo just for the fix:
```
git remote add A <url of A>
git fetch A
git checkout -b patch-1 A/patch-1
```
Once I commit all necessary fixes, I can make a pull request through the web interface of the Git repository.
After the PR is merged, I can then delete the *patch-1* branch remotely and locally by
```
git push origin --delete patch-1
$ git branch -d patch-1
```
