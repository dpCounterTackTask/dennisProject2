#!/bin/bash
#
# BASH SCRIPT TO GET REPO NAME, AUTHOR NAME, DATE, COMMIT INFO
#

# Prints repo name, since script is located in working directory of the repo
STRING=$(pwd)
basename $STRING

# Pulls author name, date of commit, and commit subject, redirects to text file
#  and then prints the contents of the text file.

git log --pretty=format:"%an, %ar - %s" > gitInfo.txt
cat gitInfo.txt

# IMPT: This script will create a new text file if one does not exist,
#       but will overwrite an existing text file.
