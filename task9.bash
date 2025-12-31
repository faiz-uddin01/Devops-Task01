#!/bin/bash
# Purpose: Remove last 3 lines
# Prerequisite: Create a file named 'data.txt' with 10 lines first

file="data.txt"

if [ -f "$file" ]; then
    echo "Deleting last 3 lines from $file..."
    head -n -3 "$file" > temp.txt && mv temp.txt "$file"
    echo "Done."
else
    echo "File not found."
fi
