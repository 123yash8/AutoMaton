#!/bin/bash

# Check if command-line arguments are provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <command1> [command2] [command3] ..."
    exit 1
fi

# Join all command-line arguments into a single string
commands="$@"

# Open a new terminal window and execute the commands
 gnome-terminal  -- bash -c "$commands"
