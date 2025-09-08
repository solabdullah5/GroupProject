# Java Game Collection Makefile
# Targets: compile, run, clean, help

# Java compiler and runtime
JAVAC = javac
JAVA = java

# Directories
SRC_DIR = .
BIN_DIR = bin
MAIN_CLASS = GameMenu

# Source files
JAVA_FILES = $(wildcard *.java)
CLASS_FILES = $(JAVA_FILES:%.java=$(BIN_DIR)/%.class)

# Default target
.PHONY: all
all: compile

# Compile all Java files
.PHONY: compile
compile: $(BIN_DIR) $(CLASS_FILES)
	@echo "✓ Compilation successful!"
	@echo "✓ Compiled files are in the '$(BIN_DIR)' directory"
	@echo "To run the game, use: make run"

# Create bin directory
$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

# Compile Java files to class files
$(BIN_DIR)/%.class: %.java
	$(JAVAC) -d $(BIN_DIR) $<

# Run the game
.PHONY: run
run: compile
	@echo "Starting Java Game Collection..."
	$(JAVA) -cp $(BIN_DIR) $(MAIN_CLASS)

# Clean compiled files
.PHONY: clean
clean:
	@echo "Cleaning compiled files..."
	@rm -rf $(BIN_DIR)
	@echo "✓ Clean complete!"

# Show help
.PHONY: help
help:
	@echo "Java Game Collection - Available Commands:"
	@echo ""
	@echo "  make compile  - Compile all Java source files"
	@echo "  make run      - Compile and run the game"
	@echo "  make clean    - Remove compiled class files"
	@echo "  make help     - Show this help message"
	@echo ""
	@echo "Requirements: Java 8 or higher"
