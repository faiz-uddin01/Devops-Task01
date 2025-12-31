#!/bin/bash
# Purpose: Monitor Disk Space and email if usage > 80%

TO="faiz.uddin.devops@outlook.com"
THRESHOLD=80

# Get disk usage of root (/) partition
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $disk_usage -gt $THRESHOLD ]; then
    echo "Warning: Disk space is critical at ${disk_usage}% on server $(hostname)" | mail -s "Critical Alert: Low Disk Space" $TO
    echo "Email sent to $TO"
else
    echo "Disk Space Normal: ${disk_usage}%"
fi
