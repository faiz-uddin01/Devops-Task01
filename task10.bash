#!/bin/bash
# Purpose: Monitor CPU and email if usage > 80%

TO="faiz.uddin.devops@outlook.com"
THRESHOLD=80

# Get CPU usage (100 - idle time)
cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
cpu_int=${cpu_usage%.*} # Convert to integer

if [ $cpu_int -gt $THRESHOLD ]; then
    echo "Warning: CPU usage is at ${cpu_int}% on server $(hostname)" | mail -s "Critical Alert: High CPU Load" $TO
    echo "Email sent to $TO"
else
    echo "CPU Normal: ${cpu_int}%"
fi
