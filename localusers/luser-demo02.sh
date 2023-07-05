#!/bin/bash

# Display the UID and username of the user executing this script 
# Display if the user is the root user or not 

# Display the UID
echo "your UID ${UID}"

# Display the username
USER_NAME=$(id -un)
echo "your username is ${USER_NAME}"

# Display if the user is the root user or not.
if [[ "${UID}" -eq 0 ]]
then
  echo "you are root."
else
  echo "you are not root"
fi 