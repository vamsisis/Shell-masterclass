#!/bin/bash

# Make sure the script is being executed with superuser privileges
if [[ "${UID}" -ne 0 ]]
then
  echo "you need to as root user"
  exit 1
fi 

# Get the Username(login)
read -p "Enter the username: " USER_NAME

# Get the realname (contents for the description field)
read -p "Enter the comments to the account: " COMMENT

# Get the password.
read -p "Enter the password: " PASSWORD

# Create the account
useradd -c "${COMMENT}" -m ${USER_NAME}

# Check to see if the useradd command succeeded
if [[ "${?}" -ne 0]]
then
  echo "The account can not be created"
  exit 1
fi 

# Set the Password
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Check to see if the passwd command succeeded
if [[ "${?}" -ne 0 ]]
then
  echo "your password can not be set for this account "
  exit 1
fi 

# Force password change on the first login
passwd -e ${USER_NAME}

# Display the username,password, and the host where the user was created
echo "username: "
echo "${USER_NAME}"
echo "password: "
echo "${PASSWORD}"
echo "host: "
echo "${HOSTNAME}"
exit 0




