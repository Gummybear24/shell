#!/bin/bash

# Get user input for password length
read -p "Please enter the desired password length: " length

# Use default length if user input is empty
if [[ -z "$length" ]]; then
    length=12
fi

characters="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()"
password=$(head /dev/urandom | tr -dc "$characters" | head -c "$length")

echo "Generated Password: $password"
