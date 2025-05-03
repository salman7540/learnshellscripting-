# Script to accept file name from user, search in a directory, and archive it if found
#!/bin/bash

read -p "Enter the name of the file: " filename

# Search for the file in the current directory
file_path=$(find . -iname "$filename" 2>/dev/null)
echo ${file_path}
if [ -n "$file_path" ]; then
    echo "File found: $file_path"
    # Archive the file
    tar -czf "${filename}.tar.gz" "$file_path"
    echo "File archived as ${filename}.tar.gz"
else
    echo "File not found."
fi