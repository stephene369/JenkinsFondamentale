#!/bin/bash

##  Code for the worker : In the worker worspacee
##
ls -l /var/lib
sudo mkdir /var/lib/jenkins
sudo useradd -d /var/lib/jenkins jenkins
sudo chown -R jenkins:jenkins /var/lib/jenkins

sudo mkdir /var/lib/jenkins/.ssh

ssh-keygen


ls -l /var/lib/ | grep jenkins

sudo cat ~/.ssh/id_rsa.pub | sudo tee -a /var/lib/jenkins/.ssh/authorized_keys > /dev/null
cat /var/lib/jenkins/.ssh/authorized_keys

cat ~/.ssh/id_rsa

# Installing java
sudo apt-get update
# Make sure the java version on agent worker1 matches the java version installed in your Jenkins server
sudo apt install -y openjdk-17-jre
### java-17-amazon-corretto-headless

cat ~/.ssh/id_rsa

exit 
#### Git permission to the slave 
sudo vim /etc/sudoers
add : jenkins ALL=(ALL) NOPASSWDL: ALL




#!/bin/bash

# # # In the master workspace
# reconnect to the agent 
ssh -i jenkins.pem ....
exit 

# Copy known_hosts to /var/lib/jenkins/.ssh

sudo mkdir -p /var/lib/jenkins/.ssh
sudo chown jenkins:jenkins /var/lib/jenkins/.ssh
sudo cp ~/.ssh/known_hosts /var/lib/jenkins/.ssh/


