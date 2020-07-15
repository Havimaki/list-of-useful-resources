#!/bin/bash

filteredDirectories=($( ls -d ../* | grep 'BEST\|EDUCATION\|GENERAL\|IOT\|LANGUAGES\|MISCELLANEOUS'))
directories=()

# remove path and special characters
for name in ${filteredDirectories[@]}
do
  # TODO: clean with one line
  cleanName=${name/'..'\//}
  cleanName=${cleanName/':'\//}
  directories+=($cleanName)
done

# show options for the paths
echo which directory would you like to add to?
select option in "${directories[@]}"; 
do
  if [[ ${directories[*]} =~ $option ]]; then
    cd ../$option
    break
  fi
  # TODO: set error within its own if block
  # TODO: add retry logic
  echo "==========================="
  echo "That option does not exist."
  echo "==========================="
  exit 1 
done

# create file
echo what is the filename?; read filename
touch $filename.md

# Add header
echo what is the title of the link?; read title
echo what is the url of the link?; read link # TODO: format url

# construct file
echo "## [$title]($link)" >> $filename.md
echo "---" >> $filename.md
echo "" >> $filename.md
echo "Elevator Pitch" >> $filename.md
echo "" >> $filename.md
echo "------" >> $filename.md
echo "Notable Quotes" >> $filename.md
echo "------" >> $filename.md
echo "> " >> $filename.md
echo "" >> $filename.md
echo "Conclusion" >> $filename.md
echo "------" >> $filename.md
echo "> " >> $filename.md
echo "" >> $filename.md
