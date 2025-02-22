#!/bin/bash

# This script attempts to process files in a directory,
# but it has a subtle bug related to globbing and quoting.

input_dir="/tmp/input_files"

# Create dummy files for testing
mkdir -p "$input_dir"
touch "$input_dir/file1.txt" "$input_dir/file 2.txt"

# The buggy part: processing files without proper quoting
for file in $input_dir/*; do
  echo "Processing: $file"
  # Suppose you need to do something with the file here, e.g.,
  #  grep "some pattern" "$file"
  # This is problematic if filenames contain spaces
done