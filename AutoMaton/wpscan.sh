#!/bin/bash

# Name of the text file

file="urls.txt"

# Declare an empty array
readarray -t array < $file
echo "$array"


for url in "${array[@]}"
do
  # Run WPscan with the desired options and save the output to a file
  wpscan --url  "${url}" | tee "op/wpscan-op/$url-wpscan-output.txt"
done
