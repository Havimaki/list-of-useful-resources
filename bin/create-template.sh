#!/bin/bash

directories=($( ls -d ../* | grep 'BEST\|EDUCATION\|GENERAL\|IOT\|LANGUAGES\|MISCELLANEOUS'))
cleanedUpDirArray=()

# remove path and special characters
for name in ${directories[@]}
do
  cleanName=${name/'..'\//}
  cleanName=${cleanName/':'\//}
  cleanedUpDirArray+=($cleanName)
done

# show options for the paths
echo which directory?
select option in "${cleanedUpDirArray[@]}"; 
do
  if [[ ${cleanedUpDirArray[*]} =~ $option ]]; then
    cd ../$option
    break
  fi
  echo "================="
  echo "incorrect option!"
  echo "================="
  exit 1 # TODO: add retry logic
done

# create file
echo what is the filename?; read filename
touch $filename.md

# Add header
echo title?; read title
echo link?; read link

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
