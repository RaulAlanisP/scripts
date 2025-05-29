#!/bin/bash

# Update package manager repositories
sudo yum update -y


# Install docker Amazon Linux 2023
sudo yum install -y docker
# Enable docker service
sudo systemctl enable docker
# Add ec2-user to docker group
sudo usermod -a -G docker ec2-user
# Start docker service
sudo systemctl start docker
# Install docker-compose
sudo curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# Verify docker-compose installation
docker-compose --version


# Install git
sudo yum install -y git
# Verify git installation
git --version


# Install java 21
sudo yum install -y java-21-amazon-corretto
# Verify java installation
java -version

# Install maven
sudo yum install -y maven
# Verify maven installation 
mvn --version


# Install Jenkins
sudo yum install -y jenkins 
# Enable Jenkins service
sudo systemctl enable jenkins
# Start Jenkins service
sudo systemctl start jenkins
# Verify Jenkins installation
sudo systemctl status jenkins
# Print Jenkins initial admin password
