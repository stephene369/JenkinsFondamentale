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

