#!/bin/bash 

## Update 
sudo apt-get update -y && sudo apt-get upgrade -y

# 
# # install Apach web server 
sudo apt install apache2 -y
sudo systemctl enable apache2 && sudo systemctl start apache2
sudo systemctl status apache2

# 
# # Install Java 
sudo apt install openjdk-11-jdk -y
java --version
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update -y
sudo apt install jenkins -y
sudo systemctl start jenkins && sudo systemctl enable jenkins

sudo systemctl status jenkins

## 
# /var/lib/jenkins/secrets/initialAdminPassword 

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
