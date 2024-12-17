#!/bin/bash

# Simple Password Generator

echo -e "\nWelcome to simple password generator.\n"

sleep 1

read -p "Please enter the length of the password: " length


echo -e "\nHere are your generated passwords:\n"
for p in $(seq 1 2);
do
	openssl rand -base64 48 | cut -c1-$length
done
