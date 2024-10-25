#!/bin/bash
#
#
#installing docker,jenkins,ssh and so on by using package manager
#
echo "updating the ubuntu system first "

sudo apt-get update -y

echo ""

echo "installing Docker using package manager in ubuntu 24.0"

sudo apt-get install docker -y

echo ""

echo "Install java for jenkins "

sudo apt-get install openjdk-11-jdk -y

echo "installing Jenkins using package manager...."

sudo apt-get install jenkins -y

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
	/usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo systemctl start jenkins

sudo systemctl enable jenkins

sudo ufw allow 8080
sudo ufw status



