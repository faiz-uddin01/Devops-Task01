#!/bin/bash
# Purpose: Check if a specific directory exists

echo "Enter directory path to check:"
read dir_path

if [ -d "$dir_path" ]
then
    echo "Directory exists."
else
    echo "Directory does NOT exist."
fi
