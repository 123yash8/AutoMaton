#!/bin/bash

# Name of the text file

file="urls.txt"

# Declare an empty array
readarray -t array < $file
echo "$array"


for url in "${array[@]}"
do
  # Run sublister with the desired options and save the output to a file
  sublist3r  -d $url  -o "op/subdom/$url-subdom-sublister.txt"
  cat "op/subdom/$url-subdom-sublister.txt" | tee -a urls.txt
done

