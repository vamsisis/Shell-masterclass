#!/bin/bash

# test-file: Evaluate the status of a file
# -e   file exists
# -f   file exists and is a regular file
# -d   file exists and is a directory
# -r   file exists and is a readable (has reable permission for the effective user)
# -w   file exists and is a writable (has write permissions for the effective user)
# -x   file exists and is executable (has execute/search permission for the effective user)


FILE=~/.bashrc

if [[ -e "$FILE" ]]
then
  if [[ -f "$FILE" ]]
  then
    echo "$FILE is a regular file"
  fi

  if [[ -d "$FILE" ]]
  then
    echo "$FILE is a  directory"
  fi

  if [[ -r "$FILE" ]]
  then
    echo "$FILE is readable"
  fi

  if [[ -w "$FILE" ]]
  then
    echo "$FILE is writable"
  fi

  if [[ -x "$FILE" ]]
  then
    echo "$FILE is executable/writable"
  fi



else
  echo "$FILE not found"
  exit 1
fi
exit 0 


# ############################### Replacing exit status with an integer argument to the return command ####################################
# ############################### Converting the previous script to a shell function to include it int larget program #####################

# test_file () {

# FILE=~/.bashrc

# if [[ -e "$FILE" ]]
# then
#   if [[ -f "$FILE" ]]
#   then
#     echo "$FILE is a regular file"
#   fi

#   if [[ -d "$FILE" ]]
#   then
#     echo "$FILE is a  directory"
#   fi

#   if [[ -r "$FILE" ]]
#   then
#     echo "$FILE is readable"
#   fi

#   if [[ -w "$FILE" ]]
#   then
#     echo "$FILE is writable"
#   fi

#   if [[ -x "$FILE" ]]
#   then
#     echo "$FILE is executable/writable"
#   fi



# else
#   echo "$FILE not found"
#   return 1
# fi



# }