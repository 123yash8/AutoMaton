#!/bin/bash

# Name of the text file

file="urls.txt"

# Declare an empty array
readarray -t array < $file
echo "$array"


for url in "${array[@]}"
do
  # Run Nmap with the desired options and save the output to a file
   nmap  -Pn "${url}" | tee "op/nmap-op/$url-nmap-output.txt"
done
