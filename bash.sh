#!/bin/bash

# Name of the user
read -p "Enter your name: " name

# an if statement to check if the name is empty
if [ -z "$name" ]; then
  # if the name is empty, print an error message
  echo "Error: Name is empty."
else
  # If the name is not empty, print a greeting
  echo "Hello, $name"
fi

# Use a while loop to read lines from a file
while read -r line; do
  # Use a case statement to check the first character of each line
  case "$line" in
    # If the line starts with 'A', print it in uppercase
    A*)
      echo "$line" | tr '[:lower:]' '[:upper:]'
      ;;
    # If the line starts with 'B', print it in lowercase
    B*)
      echo "$line" | tr '[:upper:]' '[:lower:]'
      ;;
    # For any other line, print it as-is
    *)
      echo "$line"
      ;;
  esac
done < file.txt

# Use the 'date' command to get the current date and time
now=$(date)

# Prompt the user for the email address and message
read -p "Enter the recipient's email address: " email
read -p "Enter the message: " message

# Use the 'mail' command to send an email
mail -s "Hello from Furnitas" "$email" <<< "$message"

# Use the 'ls' command to list the files in the current directory
files=$(ls)

# Use the 'echo' command to write the list of files to a file
echo "$files" > file_list.txt

# Use the 'cat' command to read the contents of the file
cat file_list.txt

# Use the 'pwd' command to print the current working directory
pwd
