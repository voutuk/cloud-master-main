%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


apt -y update 
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version
openjdk version "17.0.8" 2023-07-18
OpenJDK Runtime Environment (build 17.0.8+7-Debian-1deb12u1)
OpenJDK 64-Bit Server VM (build 17.0.8+7-Debian-1deb12u1, mixed mode, sharing)

sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

cat /var/lib/jenkins/secrets/initialAdminPassword


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#! /bin/bash

apt -y update 
apt -y install openjdk-11-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5BA31D57EF5975CA
apt -y update 
apt -y install jenkins

systemctl enable jenkins
systemctl start jenkins




#!/bin/bash

apt update 
wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list>
apt update
apt install jenkins -y
apt update
apt install fontconfig openjdk-17-jre -y
#java -version
#openjdk version "17.0.8" 2023-07-18
#OpenJDK Runtime Environment (build 17.0.8+7-Debian-1deb12u1)
#OpenJDK 64-Bit Server VM (build 17.0.8+7-Debian-1deb12u1, mixed mode, sharing)
systemctl enable jenkins
systemctl start jenkins
#systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


sudo ssh-keygen -t ed25519 -f /root/.ssh/id_ed25519 -C "shupik3@gmail.com"
cat /root/.ssh/id_ed25519.pub
cat /root/.ssh/id_ed25519

sudo mkdir -p /var/lib/jenkins/.ssh/
sudo cp /root/.ssh/id_ed25519 /var/lib/jenkins/.ssh/
sudo cp /root/.ssh/id_ed25519.pub /var/lib/jenkins/.ssh/
sudo chown -R jenkins:jenkins /var/lib/jenkins/.ssh/
sudo chmod 700 /var/lib/jenkins/.ssh/
sudo chmod 600 /var/lib/jenkins/.ssh/id_ed25519
sudo chmod 644 /var/lib/jenkins/.ssh/id_ed25519.pub
sudo -u jenkins ssh-keyscan -t ed25519 github.com >> /var/lib/jenkins/.ssh/known_hosts
sudo systemctl restart jenkins


sudo usermod -aG docker jenkins
sudo service jenkins restart





