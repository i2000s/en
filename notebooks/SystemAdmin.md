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
