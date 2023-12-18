#!/bin/bash
work_dir=/Users/bibhabpattnayak/Documents/Resumes
cd $work_dir

# Check if metadata.json exists
if [ -e "metadata.json" ]; then
    # Extract value of currentFile field
    current_file_name=$(jq -r '.currentFile' metadata.json)
    
    # Print the value (optional)
    echo "$current_file_name"
else
    echo "Error: metadata.json file not found."
fi
