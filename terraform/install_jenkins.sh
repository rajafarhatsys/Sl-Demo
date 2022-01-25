

#!/bin/bash
sudo amazon-linux-extras install epel
sudo yum -y update

echo "Install Java JDK 8"
yum remove -y java
yum install -y java-1.8.0-openjdk

echo "Install Maven"
yum install -y maven 

echo "Install git"
yum install -y git

echo "Install Docker engine"
sudo yum update -y
sudo amazon-linux-extras install docker
#sudo usermod -a -G docker jenkins
sudo usermod -a -G docker ec2-user
#sudo service docker start
service docker start
systemctl enable docker
chkconfig docker on

echo "Install Jenkins"
 wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
 rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
 yum -y install jenkins
sudo usermod -a -G docker jenkins
sudo chkconfig jenkins on
sudo service docker start
sudo service jenkins start

