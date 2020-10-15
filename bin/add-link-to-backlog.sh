#!/usr/bin/env bash

. ./bin/create-file.sh --source-only

cd _backlog

# create file with link info
get_header_info
create_file
construct_file

echo "========================================================================================"
echo "Good to go! The file has now been added to the backlog."
echo "========================================================================================"