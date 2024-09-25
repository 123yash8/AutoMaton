#!/bin/bash

# Path to the file containing subdomains
subdomain_file="urls.txt"

# Create a directory for subdomain takeover outputs
mkdir -p op/subzy-op

# Run Subzy on the subdomain file
echo "Checking for subdomain takeover on subdomains listed in $subdomain_file"
echo "Running Subzy with command: subzy run --targets $subdomain_file --output op/subzy-op/subzy-output.txt"

subzy run --targets urls.txt --output "op/subzy-op/subzy-output.txt" 2> op/subzy-op/subzy-error.log

# Check the result
if [[ -s "op/subzy-op/subzy-output.txt" ]]; then
    echo "Subdomain takeover check completed."
else
    echo "Subdomain takeover check failed or output is empty."
    cat op/subzy-op/subzy-error.log
fi
