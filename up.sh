#!/bin/bash
#set -e

# Undo last commit
# https://www.git-tower.com/learn/git/faq/undo-last-commit

# reset - commit your changes or stash them before you merge
# git reset --hard - ArcoLinux alias - grh

# reset - go back one commit - all is lost
# git reset --hard HEAD~1


# remove a file online but keep it locally
# https://www.baeldung.com/ops/git-remove-file-without-deleting-it
# git rm --cached file.txt


# Creating the databases
rm arcolinux-settings_repo_test*
repo-add -n -R arcolinux-settings_repo_test.db.tar.gz *.pkg.tar.zst

# Below command will backup everything inside the project folder
git add --all .

# Set commit message
input=$(ls x86_64 | grep '.pkg.tar.zst' | cut -d '-' -f6)

tput setaf 3
# Committing to the local repository with a message containing the time details and commit text
git commit -m "Release ${input}"
tput sgr0

# Push the local files to github
git push -u origin main
#git push -u origin main --force
