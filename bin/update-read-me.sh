#!/usr/bin/env bash

. ./bin/list-directories.sh --source-only
list_directories

echo what is the filename?; read file

mapfile < $file

# update READ ME
echo "${MAPFILE[0]}" >> README.md 
echo "${MAPFILE[6]}" >> README.md 