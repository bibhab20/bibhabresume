## Get Started
* Clone the repo to your local `git clone [<repo url>](https://github.com/bibhab20/bibhabresume.git)`
* Remove the remote repo `git remote remove origin`
* Create a new repo in your github account
* Link your local repo to the new one you just created `git remote add <remote_name> <remote_URL>`

## Local setup(for VS Code)
* Install Latex Workshop extension. Follow this guide https://www.youtube.com/watch?v=CmagZthwhaY
* Set up your environment varibale in env.sh
- resume_archive_path : path where we want to store the saves versions of your resume
- work_dir: parent directory of the repo
- final_resume_path: path where latest version is saved (make sure the it should end with the desired file name)
* Give execution permissions to all the scripts by doing `chmod +x <script file name>`

## Scripts
#### update.sh
- Once you are done with changes in any branch, use this to commit the changes and save the latest version in both archive and current directories
- It takes the commit message as an argument
- To run it do `./update.sh <your commit message>`
- After executiion is sucessfull you should be able to find the current version in the directory pointed by `final_resume_path`
#### resume_name.sh
- This scripts shows which file in the archive refers to the the resume in the current directory
- To run it do `./resume_name.sh`