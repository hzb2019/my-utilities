#!/bin/bash

# renames all files in the current working directory to have a .h265 file extension

shopt -s nullglob

currentDirectoryFiles=(*)
fileNames=($(getAllFileNames.sh))

for ((i=0; i<${#currentDirectoryFiles[@]}; i++))
do
	downgradeH265ToH264.sh ${currentDirectoryFiles[$i]} "${fileNames[$i]}.h265"
done
