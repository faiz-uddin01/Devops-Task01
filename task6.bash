#!/bin/bash
# Purpose: Ensure Nginx is always running

# Check status using systemctl (returns 0 if active, 3 if inactive)
systemctl is-active --quiet nginx

if [ $? -ne 0 ]; then
    echo "Nginx is NOT running. Starting it now..."
    sudo systemctl start nginx
    echo "Nginx started."
else
    echo "Nginx is already running."
fi
