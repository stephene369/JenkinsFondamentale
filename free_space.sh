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


##########################DO EVERYTHING AS ROOT : ################333
sudo su

################## FREE SWAP ####################3333333
sudo fallocate -l 2G /swapfile ## or sudo dd if=/dev/zero of=/swapfile bs=1M count=2048
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile swap swap defaults 0 0' | sudo tee -a /etc/fstab

################ FREE Temps ###############################
df -h /tmp
sudo mount -o remount,size=2G /tmp/
df -h /tmp


