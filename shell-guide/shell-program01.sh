#!/bin/bash

# test-file: Evaluate the status of a file
# -e   file exists
# -f   file exists and is a regular file
# -d   file exists and is a directory
# -r   file exists and is a readable (has reable permission for the effective user)
# -w   file exists and is a writable (has write permissions for the effective user)
# -x   file exists and is executable (has execute/search permission for the effective user)


FILE=~/.bashrc

if [[ -e $FILE ]]
then
  if [[ -f $FILE ]]
  then
    echo "$FILE is regular file"
  fi 
else
  echo "$FILE doesn't exist"
  exit 1

fi

exit 0