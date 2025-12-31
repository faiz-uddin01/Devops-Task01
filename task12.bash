#!/bin/bash
# Purpose: Monitor Memory and email if usage > 80%

TO="your-email@example.com"
THRESHOLD=80

# Calculate memory usage percentage
mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
mem_int=${mem_usage%.*}

if [ $mem_int -gt $THRESHOLD ]; then
    echo "Warning: Memory usage is at ${mem_int}% on server $(hostname)" | mail -s "Critical Alert: High Memory Usage" $TO
    echo "Email sent to $TO"
else
    echo "Memory Normal: ${mem_int}%"
fi 
