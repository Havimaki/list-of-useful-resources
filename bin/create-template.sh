#!/usr/bin/env bash

. ./bin/list-directories.sh --source-only
list_directories

# TODO: GET FILENAME FROM ARTICLE TITLE
# create file
echo what is the filename?; read filename
touch $filename.md

# get header info
echo what is the title of the link?; read title
echo what is author\'s full name?; read author # format author 
echo when was this written?; read date # format date
echo what is the url of the link?; read link # TODO: validate url

# construct file
echo "## [$title]($link)" >> $filename.md
echo "###### $author // $date" >> $filename.md
echo "---" >> $filename.md
echo "" >> $filename.md
echo "Elevator Pitch" >> $filename.md
echo "------" >> $filename.md
echo "" >> $filename.md
echo "" >> $filename.md
echo "------" >> $filename.md
echo "" >> $filename.md
echo "Notable Quotes" >> $filename.md
echo "------" >> $filename.md
echo "> " >> $filename.md
echo "" >> $filename.md
echo "------" >> $filename.md
echo "" >> $filename.md
echo "Conclusion" >> $filename.md
echo "------" >> $filename.md
echo "> " >> $filename.md

echo "========================================================================================"
echo "Good to go! Please navigate to the directory you selected for your newly created file."
echo "========================================================================================"