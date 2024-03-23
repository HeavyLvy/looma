#!/bin/bash
echo "Welcome to the Looma installer 🦙"

echo "Would you like to install required dependencies: [Y/n]"
read ttt

# Convert input to uppercase for easier comparison
InstallDependencies="${ttt^^}"

if [ "$InstallDependencies" = "Y" ]; then
    echo "Installing dependencies..."
elif [ "$InstallDependencies" = "N" ]; then
    echo "Skipping dependency installation."
else
    # Prompt user again if input is neither 'Y' nor 'N'
    echo "Invalid input. Please enter 'Y' or 'N'."
    # Repeat the prompt using recursion
    bash "$4"
fi
