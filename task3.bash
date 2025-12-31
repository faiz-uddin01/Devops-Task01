#!/bin/bash
# Purpose: Create a timestamped backup of a directory

src_dir="/home/ec2-user" # Change this to your source
backup_dir="/home/ec2-user/backups"
timestamp=$(date +%Y%m%d_%H%M%S)
backup_file="backup_$timestamp.tar.gz"

# Create backup folder if it doesn't exist
if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
fi

tar -czf "$backup_dir/$backup_file" "$src_dir"
echo "Backup taken successfully: $backup_dir/$backup_file"
