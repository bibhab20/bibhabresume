#!/bin/bash

# Check if main.pdf exists in the current directory
if [ -f "main.pdf" ]; then
    # Copy main.pdf to the specified directory and rename it
    cp main.pdf /Users/bibhabpattnayak/Documents/Resumes/Bibhab-Pattnayak-Resume.pdf
    echo "main.pdf copied and renamed to Bibhab-Pattnayak-Resume.pdf in /Users/bibhabpattnayak/Documents/Resumes"
else
    echo "main.pdf does not exist in the current directory"
fi
