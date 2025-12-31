#!/bin/bash
# Purpose: Check and create directory

echo "Enter directory name:"
read dir_name

if [ ! -d "$dir_name" ]; then
    echo "Directory not found. Creating it now..."
    mkdir -p "$dir_name"
    echo "Directory '$dir_name' created."
else
    echo "Directory '$dir_name' already exists."
fi
