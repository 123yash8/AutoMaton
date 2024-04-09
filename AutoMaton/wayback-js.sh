#!/bin/bash
file="urls.txt"

# Declare an empty array
readarray -t array < $file
echo "$array"


for url in "${array[@]}"
do
  # Run waybackurls with the desired options and save the output to a file
   waybackurls  "${url}" | grep ".js"| tee "op/wayback-js/$url-waybackjs-output.txt"
done
