#!/usr/bin/env bash

. ./bin/list-directories.sh --source-only
. ./bin/create-file.sh --source-only

# select which directory to add too
list_directories

# create file with link info
get_header_info
create_file
construct_file

echo "========================================================================================"
echo "Good to go! Please navigate to the directory you selected for your newly created file."
echo "========================================================================================"