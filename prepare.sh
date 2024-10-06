#!/bin/bash

# Update package list
sudo apt-get update

# Install necessary packages
sudo apt-get install -y ca-certificates curl

# Create directory for apt keyrings with appropriate permissions
sudo install -m 0755 -d /etc/apt/keyrings

# Print success message

# Add Docker's official GPG key:
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# # Install Docker Compose
sudo apt-get install docker-compose-plugin

# # Install Git
sudo apt-get install git

# # Install Nano
sudo apt-get install nano


# Verify that Docker is installed correctly by running the hello-world image.
sudo docker run hello-world

# Print success message
echo "Commands executed successfully."