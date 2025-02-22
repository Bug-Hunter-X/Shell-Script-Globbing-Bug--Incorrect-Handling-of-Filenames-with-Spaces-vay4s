#!/bin/bash

# This script demonstrates the corrected approach to processing files
# in a directory, handling filenames with spaces and special characters
# properly.

input_dir="/tmp/input_files"

# Create dummy files for testing
mkdir -p "$input_dir"
touch "$input_dir/file1.txt" "$input_dir/file 2.txt"

# Correct way: using an array to handle the results of globbing
files=($input_dir/*)

for file in "${files[@]}"; do
  echo "Processing: $file"
  # Now you can safely process $file, even if it has spaces
  # grep "some pattern" "$file"
done