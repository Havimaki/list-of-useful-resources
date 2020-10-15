#!/usr/bin/env bash

get_header_info() {
  echo what is the title of the link?; read title
  echo what is author\'s full name?; read author # format author 
  echo when was this written?; read date # format date
  echo what is the url of the link?; read link # TODO: validate url  
}

create_file() {
  filename=${title//' '/$'-'}
  touch $filename.md
}

construct_file() {
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
}
