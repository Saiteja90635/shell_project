#!/bin/bash

# superuser access

if [[ "${UID}" -ne o  ]]
then 
	echo 'please run with sudo command'
	exit 1
fi

# arguments

if [[ "${#}" -lt 1 ]]
then
	echo "please provide user name"
	exit 1
fi

# store first arg as user_name and remaining arg as comment

user_name="${1}"
shift
comment="${@}"

# create password

Password=$(date +%s%N)

#create the user

useradd -c $comment -m $usr_name

#check if user is created or not

if [[ $? -ne 0 ]]
then
	echo 'account could not be created'
	exit 1
fi

# set the password

passwd $Password $user_id

if [[ $? -ne 0 ]]
then
	echo 'password is not created'
	exit 1
fi

#password change on first login

passwd -e $user_name

#Display the output

echo 'USERNAME: $user_name'
echo 'password: $Password'
echo $hostname

