#!/usr/bin/env bash

echo "Add group docker"
sudo groupadd docker

echo "Add current user to group"
sudo usermod -aG docker $USER