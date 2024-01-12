#!/bin/bash

##  Code for the worker : In the worker worspacee
##
ls -l /var/lib
sudo mkdir /var/lib/jenkins
sudo useradd -d /var/lib/jenkins jenkins
sudo chown jenkins:jenkins /var/lib/jenkins

sudo mkdir /var/lib/jenkins/.ssh
ssh-keygen

ls -l /var/lib/ | grep jenkins
cat ~/.ssh/id_rsa.pub

sudo cat ~/.ssh/id_rsa.pub | sudo tee -a /var/lib/jenkins/.ssh/authorized_keys > /dev/null
cat /var/lib/jenkins/.ssh/authorized_keys

cat ~/.ssh/id_rsa
exit 






#!/bin/bash

# # # In the master workspace
sudo mkdir /var/lib/jenkins/.ssh
sudo cp ~/.ssh/known_hosts /var/lib/jenkins/.ssh



