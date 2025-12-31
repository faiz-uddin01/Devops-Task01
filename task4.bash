#!/bin/bash
# Purpose: Install and start Nginx on Amazon Linux

echo "Installing Nginx..."
sudo dnf install nginx -y

echo "Starting Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx Status:"
sudo systemctl status nginx --no-pager
