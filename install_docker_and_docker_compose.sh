#!/bin/bash

echo "Select an option to continue:"
echo "1) Install Docker and Docker Compose"
echo "2) Install Only Docker "
echo "3) Install Only Docker Compose"
read -p "Enter your choice: " choice

# Update the apt package list
sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

lsb_release -cs > /tmp/os_codename.txt

if [ "$choice" = "1" ] || [ "$choice" = "2" ]; then
    # Add Docker's official GPG key
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

    # Add the Docker repository
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(cat /tmp/os_codename.txt) stable" | sudo tee /etc/apt/sources.list.d/docker.list
fi

# Update the apt package list (again)
sudo apt-get update

if [ "$choice" = "1" ] || [ "$choice" = "2" ]; then
    # Install Docker
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io
fi

if [ "$choice" = "1" ] || [ "$choice" = "3" ]; then
    # Install Docker Compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.28.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi

# Start and enable the Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Verify that Docker is installed correctly by running the hello-world image
sudo docker run hello-world
