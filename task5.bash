#!/bin/bash
# Purpose: Install Java and Tomcat manually

# 1. Install Java
echo "Installing Java..."
sudo dnf install java-17-amazon-corretto -y

# 2. Download Tomcat
cd /opt
echo "Downloading Tomcat..."
sudo wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.34/bin/apache-tomcat-10.1.34.tar.gz

# 3. Extract and Rename
sudo tar -xvf apache-tomcat-10.1.34.tar.gz
sudo mv apache-tomcat-10.1.34 tomcat

# 4. Start Tomcat
echo "Starting Tomcat..."
sh /opt/tomcat/bin/startup.sh
