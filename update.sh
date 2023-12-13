#!/bin/bash
commit_mesasge="$1"
branch_name=$(git branch --show-current)
resume_archive_path="/Users/bibhabpattnayak/Documents/Resumes/ResumeArchive/"
work_dir="/Users/bibhabpattnayak/Documents/Resumes/"
final_resume_path="/Users/bibhabpattnayak/Documents/Resumes/Bibhab-Pattnayak-Resume.pdf"
metadata_file_name="metadata.json"
echo " Branch Name: $branch_name"
git status
git add .
echo "Files added. Status:"
git status

git commit -m "$commit_mesasge"
echo "Commit executed. Status after commit:"
git status

current_datetime=$(date +"%Y-%m-%d")

separator="_"
extension=".pdf"
echo "Commit message: $commit_mesasge"
archive_file_name="$branch_name$separator$current_datetime$separator$commit_mesasge$extension"
echo "Archive file name: $archive_file_name"
metadata=$(cat <<EOF
{
  "branch": "$branch_name",
  "currentFile": "$archive_file_name",
  "lastCommitDate": "$current_datetime",
  "commitMessage": "$commit_mesasge"
}
EOF
)
# Check if main.pdf exists in the current directory
if [ -f "main.pdf" ]; then
    # Copy main.pdf to the final resume dictory directory and rename it
    cp main.pdf $final_resume_path
    echo "latest version copied to $final_resume_path"
    #copy main.pdf to archive
    cp main.pdf $resume_archive_path$archive_file_name
    #write the metadata
    echo "$metadata" > "$work_dir$metadata_file_name"
else
    echo "main.pdf does not exist in the current directory"
fi