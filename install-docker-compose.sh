#!/usr/bin/env bash

echo "Uploading docker-compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo "Make docker-compose executable"
sudo chmod +x /usr/local/bin/docker-compose

echo "Verify docker-compose installation"
docker-compose --version