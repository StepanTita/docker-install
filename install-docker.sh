#!/usr/bin/env bash

# installing docker first
echo "Updating packages"
sudo apt-get update

echo "Installing dependencies"
echo "Y" | sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo "Downloading docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Adding remote repository"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "Updating packages"
sudo apt-get update

echo "Installing docker-ce etc."
echo "Y" | sudo apt-get install docker-ce docker-ce-cli containerd.io

echo "Running hello-world"
sudo docker run hello-world