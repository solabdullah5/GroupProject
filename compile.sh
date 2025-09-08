#!/bin/bash
echo "Compiling Java Game Project..."
echo

# Create bin directory if it doesn't exist
mkdir -p bin

# Compile all Java files
javac -d bin *.java

if [ $? -eq 0 ]; then
    echo
    echo "✓ Compilation successful!"
    echo "✓ Compiled files are in the 'bin' directory"
    echo
    echo "To run the game, use: ./run.sh"
else
    echo
    echo "✗ Compilation failed!"
    echo "Please check for errors and try again."
fi
