#!/bin/bash

# Update package lists
sudo apt-get update

# Install Nginx
sudo apt-get install -y nginx

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx installation complete."
