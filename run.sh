#!/bin/bash
echo "Starting Java Game Collection..."
echo

# Check if bin directory exists
if [ ! -d "bin" ]; then
    echo "✗ Game not compiled yet!"
    echo "Please run ./compile.sh first to compile the game."
    echo
    exit 1
fi

# Run the game
java -cp bin GameMenu

if [ $? -ne 0 ]; then
    echo
    echo "✗ Failed to start the game!"
    echo "Make sure Java is installed and in your PATH."
fi
