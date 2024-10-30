#!/bin/bash

# Function to greet the user
greet_user() {
    # Ask for user's name
    read -p "What is your name? " name

    # Ask for user's age
    read -p "How old are you? " age

    # Check if age is a number
    if ! [[ "$age" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid age."
        exit 1
    fi

    # Conditional messages based on age
    if [ "$age" -lt 18 ]; then
        echo "Hello, $name! You are a minor."
    elif [ "$age" -lt 65 ]; then
        echo "Hello, $name! You are an adult."
    else
        echo "Hello, $name! You are a senior citizen."
    fi
}

# Run the function
greet_user

