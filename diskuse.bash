#!/bin/bash
# SCRIPT PURPOSE: Shows disk usage for home directory

# 1. Go to scripts directory (simulating /var/log)
cd /home/ec2-user

# 2. Backup old log if it exists
if [ -f disk.log ]; then
    cp disk.log disk.log.0
fi

# 3. Check disk usage of home folder and save to file
du -sk /home/ec2-user/* > disk.log

# 4. Display output
cat disk.log
