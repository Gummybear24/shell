#!/bin/bash
# Set the script interpreter to bash

echo "Press any key to continue"
# Output a prompt message

while [ true ] ; do
# Enter an infinite loop

  read -t 3 -n 1
  # Use the read command to wait for user input. Option -t 3 means wait for 3 seconds, -n 1 means read only one character.

  if [ $? = 0 ] ; then
  # Check the return value of the read command. $? holds the exit status of the last command. 0 indicates success.
    exit ;
    # If the user presses a key, exit the script
  #else
    #echo "waiting for the keypress"
    # If the user doesn't press a key, you can add some additional prompt information
  fi
done
