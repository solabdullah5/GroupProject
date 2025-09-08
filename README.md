# 🎮 Java Game Collection: Connect Four & Tic Tac Toe

[![Java](https://img.shields.io/badge/Java-8%2B-orange.svg)](https://www.oracle.com/java/)
[![GUI](https://img.shields.io/badge/GUI-Swing-blue.svg)](https://docs.oracle.com/javase/tutorial/uiswing/)
[![AI](https://img.shields.io/badge/AI-Minimax%20Algorithm-green.svg)](#ai-implementation)

A professional implementation of two classic board games featuring intelligent AI opponents, built with Java Swing GUI and advanced game theory algorithms.

## 🌟 Overview

This project showcases advanced Java programming concepts through the implementation of two beloved classic games:
- **Connect Four** - Strategic four-in-a-row gameplay on a 6×7 grid
- **Tic Tac Toe** - Classic three-in-a-row on a 3×3 grid

### Key Features
- 🎯 **Dual Game Modes**: Player vs Player and Player vs AI
- 🤖 **Intelligent AI**: Minimax algorithm with Alpha-Beta pruning
- 🎨 **Professional GUI**: Clean, responsive Swing interface
- 📊 **Score Tracking**: Persistent win/draw statistics
- ⚙️ **Configurable Difficulty**: 10 AI difficulty levels
- 🔄 **Game Management**: Easy reset and menu navigation

## 🚀 Quick Start

### Prerequisites
- **Java 8 or higher** - [Download Java](https://www.oracle.com/java/technologies/downloads/)
- **Operating System**: Windows, macOS, or Linux

### 📥 Installation & Setup

1. **Clone or download this repository**
   ```bash
   git clone <repository-url>
   cd GroupProject
   ```

2. **Compile the project**
   
   **Windows (Command Prompt):**
   ```cmd
   compile.bat
   ```
   
   **macOS/Linux:**
   ```bash
   chmod +x compile.sh
   ./compile.sh
   ```

3. **Run the game**
   
   **Windows (Command Prompt):**
   ```cmd
   run.bat
   ```
   
   **macOS/Linux:**
   ```bash
   chmod +x run.sh
   ./run.sh
   ```

### 🔧 Manual Compilation (Alternative)
```cmd
REM For Windows Command Prompt
javac *.java
java GameMenu
```

```bash
# For macOS/Linux
javac *.java
java GameMenu
```

## 📁 Project Architecture

```
GroupProject/
├── src/
│   ├── Board.java              # Abstract base class for game boards
│   ├── ConnectFourBoard.java   # Connect Four game logic
│   ├── TicTacToeBoard.java     # Tic Tac Toe game logic
│   ├── ConnectFourGame.java    # Connect Four GUI and game flow
│   ├── TicTacToeGame.java      # Tic Tac Toe GUI and game flow
│   └── GameMenu.java           # Main menu and entry point
├── bin/                        # Compiled class files (auto-generated)
├── compile.bat/.sh             # Compilation scripts
├── run.bat/.sh                 # Execution scripts
└── README.md                   # Project documentation
```

### 🏗️ Class Structure

- **`Board.java`** - Abstract base class implementing the Minimax algorithm
- **`ConnectFourBoard.java`** - Connect Four-specific game logic and win detection
- **`TicTacToeBoard.java`** - Tic Tac Toe-specific game logic and win detection  
- **`ConnectFourGame.java`** - Connect Four GUI controller and game management
- **`TicTacToeGame.java`** - Tic Tac Toe GUI controller and game management
- **`GameMenu.java`** - Main application entry point and game selection

## 🎯 Game Rules

### Connect Four
- **Objective**: Connect four pieces in a row (horizontal, vertical, or diagonal)
- **Board**: 6×7 grid with gravity-based piece placement
- **Gameplay**: Players alternate dropping pieces into columns
- **Strategy**: Block opponents while building your own connections

### Tic Tac Toe  
- **Objective**: Get three pieces in a row (horizontal, vertical, or diagonal)
- **Board**: 3×3 grid with direct placement
- **Gameplay**: Players alternate placing X's and O's
- **Strategy**: Control the center and create multiple winning threats

## 🤖 AI Implementation

### Minimax Algorithm with Alpha-Beta Pruning
Our AI implementation uses advanced game theory to provide challenging opponents:

- **Algorithm**: Minimax with Alpha-Beta pruning for optimal performance
- **Evaluation**: Sophisticated board position scoring
- **Difficulty Scaling**: 10 levels from beginner to expert
- **Performance**: Optimized with pruning for real-time gameplay

### AI Difficulty Levels
- **1-3**: Beginner - Makes occasional suboptimal moves
- **4-6**: Intermediate - Balanced strategic play
- **7-8**: Advanced - Strong tactical awareness  
- **9-10**: Expert - Near-perfect play with deep lookahead

## 🎮 How to Play

### Starting a Game
1. **Launch** the application using the run script
2. **Select** your preferred game from the main menu
3. **Choose** game mode: Player vs Player or Player vs AI
4. **Set** AI difficulty level (if applicable)

### Game Controls
- **Mouse Click**: Make moves by clicking on the game board
- **Reset**: Start a new round while keeping scores
- **Back to Menu**: Return to game selection screen

### Tic Tac Toe Gameplay
1. Click any empty cell to place your mark
2. First player uses X, second player uses O
3. Win by getting three marks in a row
4. Game declares winner or draw automatically

### Connect Four Gameplay  
1. Click any column to drop your piece
2. Pieces fall to the lowest available position
3. Win by connecting four pieces in any direction
4. Watch for both offensive and defensive opportunities

## 📊 Features

### Core Functionality
- ✅ **Two Complete Games** - Fully implemented with all rules
- ✅ **AI Opponents** - Challenging computer players
- ✅ **Multiplayer Support** - Local two-player gameplay
- ✅ **Score Tracking** - Persistent win/loss/draw statistics
- ✅ **Game Management** - Easy reset and navigation

### Technical Features
- ✅ **Object-Oriented Design** - Clean, maintainable code architecture
- ✅ **GUI Programming** - Professional Swing interface
- ✅ **Algorithm Implementation** - Advanced AI with minimax
- ✅ **Game Theory** - Strategic decision-making logic
- ✅ **Cross-Platform** - Runs on Windows, macOS, and Linux

## 🔧 Technical Details

### Requirements
- **Java Version**: 8 or higher
- **Memory**: 50MB RAM minimum
- **Display**: Any resolution supporting 700×600 minimum window
- **Input**: Mouse for game interaction

### Performance
- **Startup Time**: < 2 seconds on modern systems
- **AI Response**: < 1 second for all difficulty levels
- **Memory Usage**: < 20MB during gameplay
- **Platform**: Cross-platform Java compatibility

## 🏆 Educational Value

This project demonstrates proficiency in:
- **Java Programming** - Advanced OOP concepts and design patterns
- **GUI Development** - Event-driven programming with Swing
- **Algorithm Implementation** - Game theory and search algorithms
- **Software Architecture** - Clean, modular, and extensible design
- **Problem Solving** - Complex logic implementation and optimization

## 📝 Development Notes

### Design Patterns Used
- **Abstract Factory** - Board creation and management
- **Template Method** - Common game flow implementation
- **Observer** - GUI event handling and updates

### Code Quality Features
- Comprehensive inline documentation
- Consistent naming conventions  
- Modular architecture for easy extension
- Error handling and input validation
- Clean separation of concerns

## 🚀 Future Enhancements

Potential improvements for extended development:
- **Network Multiplayer** - Online gameplay support
- **AI Visualization** - Show AI thinking process
- **Custom Board Sizes** - Configurable game dimensions
- **Tournament Mode** - Multi-game competitions
- **Save/Load Games** - Persistent game state
- **Statistics Dashboard** - Advanced analytics
- **Sound Effects** - Audio feedback for actions
- **Themes** - Customizable visual appearance

## 📄 License

This project is available for educational and portfolio purposes. Feel free to explore the code and learn from the implementation.

---

**Created as a demonstration of Java programming skills, GUI development, and AI algorithm implementation.**
