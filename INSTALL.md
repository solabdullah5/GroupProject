# 📦 Installation Guide

This guide provides detailed instructions for setting up and running the Java Game Collection on different platforms.

## 📋 System Requirements

### Minimum Requirements
- **Java Runtime Environment (JRE) 8** or higher
- **Operating System**: Windows 7+, macOS 10.10+, or Linux
- **Memory**: 50MB available RAM
- **Display**: 800×600 resolution minimum
- **Input**: Mouse for game interaction

### Recommended Requirements
- **Java 11** or higher for optimal performance
- **Memory**: 100MB available RAM
- **Display**: 1024×768 resolution or higher

## ☕ Java Installation

### Check if Java is Already Installed
```bash
java -version
```

If Java is installed, you should see output similar to:
```
java version "11.0.12" 2021-07-20 LTS
Java(TM) SE Runtime Environment (build 11.0.12+8-LTS-237)
```

### Installing Java

#### Windows
1. Visit [Oracle Java Downloads](https://www.oracle.com/java/technologies/downloads/)
2. Download the Windows installer for your system (x64 or x86)
3. Run the installer and follow the setup wizard
4. Verify installation using `java -version` in Command Prompt

#### macOS
**Option 1: Oracle JDK**
1. Visit [Oracle Java Downloads](https://www.oracle.com/java/technologies/downloads/)
2. Download the macOS installer (.dmg file)
3. Open the installer and follow instructions
4. Verify with `java -version` in Terminal

**Option 2: Homebrew**
```bash
brew install openjdk@11
```

#### Linux (Ubuntu/Debian)
```bash
# OpenJDK (recommended)
sudo apt update
sudo apt install openjdk-11-jdk

# Verify installation
java -version
javac -version
```

#### Linux (Red Hat/CentOS/Fedora)
```bash
# OpenJDK
sudo yum install java-11-openjdk-devel
# or for newer versions:
sudo dnf install java-11-openjdk-devel
```

## 🚀 Game Installation

### Method 1: Using Pre-built Scripts (Recommended)

#### Windows
1. **Download/Clone** the project to your local machine
2. **Open Command Prompt** and navigate to the project directory:
   ```cmd
   cd "path\to\GroupProject"
   ```
3. **Compile** the game:
   ```cmd
   compile.bat
   ```
4. **Run** the game:
   ```cmd
   run.bat
   ```

#### macOS/Linux
1. **Download/Clone** the project to your local machine
2. **Open Terminal** and navigate to the project directory
3. **Make scripts executable**:
   ```bash
   chmod +x compile.sh run.sh
   ```
4. **Compile** the game:
   ```bash
   ./compile.sh
   ```
5. **Run** the game:
   ```bash
   ./run.sh
   ```

### Method 2: Using Makefile (Linux/macOS)

If you have `make` installed:
```bash
# Compile and run
make run

# Or compile first, then run separately
make compile
make run

# Clean compiled files
make clean
```

### Method 3: Manual Compilation

**Windows (Command Prompt):**
```cmd
REM Create bin directory
mkdir bin

REM Compile all Java files
javac -d bin *.java

REM Run the game
java -cp bin GameMenu
```

**macOS/Linux:**
```bash
# Create bin directory
mkdir bin

# Compile all Java files
javac -d bin *.java

# Run the game
java -cp bin GameMenu
```

## 🔧 Troubleshooting

### Common Issues

#### "java: command not found"
**Problem**: Java is not installed or not in system PATH.
**Solution**: 
1. Install Java following the instructions above
2. Ensure Java is added to your system PATH
3. Restart your terminal/command prompt

#### "javac: command not found"
**Problem**: Java Development Kit (JDK) is not installed.
**Solution**: Install the full JDK (not just JRE) following the instructions above.

#### Compilation Errors
**Problem**: Source code issues or missing dependencies.
**Solution**:
1. Ensure all `.java` files are in the same directory
2. Check that you have write permissions in the directory
3. Verify Java version compatibility (`java -version`)

#### Game Window Doesn't Appear
**Problem**: GUI display issues or Java Swing problems.
**Solution**:
1. Check if you're running in a graphical environment (not headless)
2. Try running with: `java -Djava.awt.headless=false -cp bin GameMenu`
3. Ensure your system supports Java Swing

#### Permission Denied (Linux/macOS)
**Problem**: Script files don't have execute permissions.
**Solution**:
```bash
chmod +x compile.sh run.sh
```

### Platform-Specific Notes

#### Windows
- Use **Command Prompt** (cmd) for best compatibility
- Ensure Windows Defender or antivirus isn't blocking execution
- Run as Administrator if you encounter permission issues
- PowerShell may have different syntax - stick to Command Prompt

#### macOS
- May need to allow Java in Security & Privacy settings
- If using newer macOS versions, you might get security warnings for unsigned applications

#### Linux
- Ensure you have a display server running (X11 or Wayland)
- Some minimal Linux installations might need additional GUI libraries

## 📁 Directory Structure After Installation

```
GroupProject/
├── bin/                     # Compiled class files (created after compilation)
│   ├── Board.class
│   ├── GameMenu.class
│   ├── ConnectFourBoard.class
│   ├── ConnectFourGame.class
│   ├── TicTacToeBoard.class
│   └── TicTacToeGame.class
├── *.java                   # Source files
├── compile.bat/.sh          # Compilation scripts
├── run.bat/.sh             # Execution scripts
├── Makefile                # Make build file
├── README.md               # Documentation
└── INSTALL.md              # This file
```

## ✅ Verifying Installation

After successful installation, you should be able to:

1. **Compile without errors**: Scripts complete with "✓ Compilation successful!"
2. **Run the game**: A window titled "Game Menu" appears with two buttons
3. **Play games**: Both Tic Tac Toe and Connect Four are fully functional
4. **Use AI**: Player vs AI mode works with difficulty selection

## 🆘 Getting Help

If you encounter issues not covered in this guide:

1. **Check Java Version**: Ensure you're using Java 8 or higher
2. **Verify File Integrity**: Make sure all source files are present
3. **Review Error Messages**: Most error messages provide helpful hints
4. **Try Manual Compilation**: Use the manual method to isolate issues

## 🔄 Updating

To update to a newer version:
1. **Backup your current installation** (if you've made modifications)
2. **Download the new version**
3. **Run the clean command** (if using Makefile): `make clean`
4. **Recompile**: Follow the installation steps again

---

**For additional support or questions about the game mechanics, refer to the main README.md file.**
