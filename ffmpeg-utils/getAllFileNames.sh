#!/bin/bash

# extracts the names of files before the file extensions for all files in the current working directory

shopt -s nullglob

arr=(*)
for f in "${arr[@]}"; do
	echo $(getFileName.sh $f)
done
