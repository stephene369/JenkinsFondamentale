#!/bin/bash

sudo chown jenkins:jenkins /var/lib/jenkins

ls -l /var/lib/ | grep jenkins
ssh-keygen

sudo mkdir /var/lib/jenkins/.ssh
cat ~/.ssh/id_rsa.pub

sudo cat ~/.ssh/id_rsa.pub | sudo tee -a /var/lib/jenkins/.ssh/authorized_keys > /dev/null
cat /var/lib/jenkins/.ssh/authorized_keys

sudo apt-get update
sudo apt install -y openjdk-11-jre-headless

cat ~/.ssh/id_rsa

