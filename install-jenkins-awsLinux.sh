#!/bin/bash

sudo yum update –y

R='\033[0;31m'    #Y='\033[1;32m'  #B='\033[0;34m'
G='\033[0;32m'

yum install -y httpd.x86_64

systemctl start httpd.service

systemctl enable httpd.service

sudo yum install -y wget

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum upgrade

sudo dnf install java-17-amazon-corretto -y

sudo yum install jenkins -y

sudo systemctl daemon-reload

sudo systemctl enable jenkins

sudo systemctl start jenkins

echo -e "${G}The Amindmin Password is : "
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

sudo systemctl status jenkins


### 

git config --global user.name "stephene369"
git config --global user.email stephenew36@gmail.com

