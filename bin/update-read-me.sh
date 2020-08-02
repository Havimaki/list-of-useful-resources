#!/usr/bin/env bash

. ./bin/list-directories.sh --source-only

diff="$(git diff --name-only . ':(exclude)bin/update-read-me.sh')"
directory="$(echo "${diff%%/*}")"
file="$(echo "$diff" | cut -d'/' -f 2)"

cd $directory
mapfile < $file

# update READ ME
echo "${MAPFILE[0]}" >> README.md 
echo "${MAPFILE[6]}" >> README.md 