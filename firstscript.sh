#!/bin/bash
read -p "Enter your name: " name
echo "Hello, $name! Welcome to the world of Bash scripting."
echo "This is your first script."

# This script prompts the user for their name and then greets them.

#write a script that takes a number as input and checks if it is even or odd
read -p "Enter a number: " number
if [ $((number % 2)) -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi
# This script checks if a number is even or odd.