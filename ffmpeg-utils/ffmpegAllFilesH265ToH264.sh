#!/bin/bash

# downgrades all files in the current working directory from h.265 to h.264

shopt -s nullglob

currentDirectoryFiles=(*)
fileNames=($(getAllFileNames.sh))

for ((i=0; i<${#currentDirectoryFiles[@]}; i++)); do
	downgradeH265ToH264.sh ${currentDirectoryFiles[$i]} "${fileNames[$i]}.mp4"
done
