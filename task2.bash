#!/bin/bash
# Purpose: Create 5 files named file1.txt to file5.txt

echo "Creating 5 files..."
for i in {1..5}
do
    touch "file$i.txt"
    echo "Created file$i.txt"
done
