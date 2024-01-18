#!/bin/bash

# Clean Up Temporary Files
sudo find /tmp -type f -mtime +7 -exec rm {} \;

## Remove Old Log Files:
sudo find /var/log -type f -name '*.gz' -delete

## Check for Large Files:
sudo find /tmp -type f -size +100M -exec rm {} \;

## Verify Disk Space:
sudo df -h

##Check for Zombie Processes:
sudo ps aux | grep 'Z'


### Paste the following code below at the very bottom of the /etc/fstab file. The code must look exactly as it does in the example, or it will break!

nano -w /etc/fstab
#Temporary folder TMPFS
tmpfs /tmp tmpfs rw,nodev,nosuid,size=5G 0 0

