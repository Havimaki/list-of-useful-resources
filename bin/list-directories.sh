#!/usr/bin/env bash

list_directories() {
  filteredDirectories=($( ls ../* | grep 'BEST\|EDUCATION\|GENERAL\|IOT\|LANGUAGES\|MISCELLANEOUS'))
  directories=()

  # remove path and special characters
  for name in ${filteredDirectories[@]}
  do
    cleanName=${name/':'\//}
    directories+=($cleanName)
  done

  # show options for the paths
  echo which directory would you like to add to?
  select option in "${directories[@]}"; 
  do
    if [[ ${directories[*]} =~ $option ]]; then
      cd $option
      break
    fi
    # TODO: set error within its own if block
    # TODO: add retry logic
    echo "==========================="
    echo "That option does not exist."
    echo "==========================="
    exit 1 
  done
}