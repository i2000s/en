---
layout: default
title: Some notes on computer system administration
---

# Linux/Ubuntu OS

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
