#!/usr/bin/env bash

TITLE="TITLE-PLACEHOLDER-$(date +%s)"
AUTHOR="AUTHOR-PLACEHOLDER"
DATE="DATE-PLACEHOLDER"
LINK="LINK-PLACEHOLDER"

get_header_info() {
  echo what is the url of the link?; read LINK # TODO: validate url 
  if [ "$1" ]; then
    echo what is the title of the link?; read TITLE
    echo what is author\'s full name?; read AUTHOR # format author 
    echo when was this written?; read DATE # format date
  else
    TITLE="new-entry-$(date +%s)"
  fi
}

create_file() {
  filename=${TITLE//' '/$'-'}
  touch $filename.md
}

construct_file() {
  echo "## [$TITLE]($LINK)" >> $filename.md
  echo "###### $AUTHOR // $DATE" >> $filename.md
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
