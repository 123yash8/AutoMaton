#!/bin/bash

# Name of the text file

file="urls.txt"

# Declare an empty array
readarray -t array < $file
echo "$array"



for url in "${array[@]}"
do
  # Run nikto with the desired options and save the output to a file
   nikto -h "${url}" -o "op/nikto-op/$url-nikto.txt" 
done

