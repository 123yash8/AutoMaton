#!/bin/bash

figlet "Automaton" |boxes -d nuke| lolcat -a -s 100 
echo "By Yash Radhakrishna"
echo "LinkedIN https://www.linkedin.com/in/yrdeshmukh009/"
echo "GitHuB https://github.com/123yash8"

# Prompt the user for input
echo "Enter your main url without http:// or any / 0r symbol..... : "
read userInput
echo "how much interval do you want in between running nmap nikto nuclei and wpscan in seconds for Ip blocking targets use more and if Ip is whitelisted use 1"
read interval

# File to insert into
file="urls.txt"

# Insert user input into the file
echo "$userInput" > "$file"

echo "Got your input in $file."
figlet "Running Sublist3r"|lolcat -a -s 100
echo "_____________________________________________________________________________________________________________________________" 
bash sublister.sh
sleep 5
figlet "Running Wayback to find params for xss and sqli" | lolcat
bash term-open.sh "./wayback-js.sh"
bash term-open.sh "./wayback-kxss.sh"
bash term-open.sh "./wayback_params.sh"
sleep $interval
figlet "Running Nmap on all the Collected Urls"|lolcat
figlet "X-X-X-X-X-X-X-X"
bash term-open.sh "./nmap_scanner.sh"
sleep $interval
figlet "Running nikto on all the Collected Urls"|lolcat
figlet "X-X-X-X-X-X-X-X"
bash term-open.sh "./nikto_run.sh"
sleep $interval
figlet "Running nuclei on all the Collected Urls"|lolcat
figlet "X-X-X-X-X-X-X-X"
bash term-open.sh "./nuclei.sh"
sleep $interval
figlet "Running WPscan on all the Collected Urls"|lolcat
figlet "X-X-X-X-X-X-X-X"
bash term-open.sh "./wpscan.sh"
sleep $interval



