# Shell Script Globbing Bug

This repository demonstrates a common bug in shell scripts related to how globbing (filename expansion) interacts with filenames containing spaces. The script `bug.sh` attempts to process files in a directory, but it fails to correctly handle files with spaces in their names.

The `bugSolution.sh` file provides a corrected version that demonstrates how to properly handle such filenames.

## How to reproduce the bug
1. Clone the repository.
2. Run `bug.sh`.
3. Observe that the script does not correctly process the file `file 2.txt` because it is treated as two separate arguments.

## Solution
The solution uses an array to handle the results of the globbing operation correctly, thereby avoiding issues with filenames containing spaces or special characters. This approach handles various cases more robustly. 