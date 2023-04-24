#!/bin/bash

echo "Starting program at $(date)"  #date will be substituted 

echo "Runing program $0 with $# arguments with pid $$"

for file in "$@"; do 
    grep foobar "$file" > /dev/null 2> /dev/null 
    #This is a shell script loop that takes file arguments as input. For each file, 
    #the script uses the grep command to search for the word "foobar" in the file.
    # The output of grep is then redirected to /dev/null, which discards it.
    # The 2> operator redirects the standard error output of the grep command to /dev/null as well, 
    #effectively suppressing any error messages.
    # This script is commonly used to quickly search multiple files for a specific pattern and discard any output.

    if [[ "$?" -ne 0 ]]; then 
        echo "file $file does not have any foobar, adding one "
        echo "# foobar" >> "$file"
    fi 
done 