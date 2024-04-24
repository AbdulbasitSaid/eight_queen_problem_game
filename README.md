
# Eight Queen Problem Game

## Introduction

The Eight Queen Problem Game is an interactive Flutter application that brings the classic eight queen puzzle to mobile devices. The goal is to place eight queens on a chessboard such that no two queens threaten each other, meaning they can't share the same row, column, or diagonal.

## Project Overview

This project uses Flutter to create a user-friendly mobile app that challenges players to solve the puzzle with intuitive touch controls and a clean graphical interface.

## Technologies

- **Flutter:** For building the mobile application.
- **Dart:** The programming language used with Flutter.

## Getting Started

### Prerequisites

Ensure you have Flutter installed on your machine. For installation instructions, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).

### Installation

Follow these steps to get the app running on your local machine:

1. Clone the repository:

   ```bash
   git clone https://github.com/AbdulbasitSaid/eight_queen_problem_game.git
   ```

2. Navigate to the project directory:

   ```bash
   cd eight_queen_problem_game
   ```

3. Initialize project
    if on mac on linux and can use Makefiles

     ```bash
     make init
     ```

     else run

    ```bash
     flutter pub get
    ```

    this above command will install all packages

4. Run the build runner to generate need code.

     if on mac on linux and can use Makefiles

     ```bash
    make build_runner
     ```

     else run
        ```bash
        dart run build_runner watch --delete-conflicting-outputs
        ```
    The above should generate your code.

### Run the App

To run the app in a development environment, follow these steps:

1. Ensure an emulator is running or a device is connected to your machine.
2. Execute the following command within the project directory:

   ```bash
   flutter run
   ```

## Game Rules

- **Starting the Game**: The app presents an empty 8x8 chessboard where players can attempt to solve the Eight Queens puzzle.
- **Placing Queens**: Tap on a tile to place a queen. The game will immediately indicate whether the placement is valid.
  - **Valid Placement**: A placement is considered valid if no two queens threaten each other. This means no queens can be on the same row, column, or diagonal.
  - **Invalid Placement**: If a placement is invalid, the game will show a visual or textual indication explaining why the placement cannot be made.
- **Adjusting Queens**: Users can change the position of any queen on the board to explore different configurations.
- **Solving the Puzzle**: When all eight queens are correctly placed on the board without threatening each other, the game notifies the player that the puzzle is solved.

### Enhanced Features

- **Pre-placed Queens**: Optionally, start the game with one or more queens already placed on the board in positions that still allow for a valid solution to be found. This variation challenges the player to complete the puzzle from a unique starting configuration.

### what did I spend must time on?

I spent must time on trying to make the good UI

### How hard was it to solve the challenge?

The challenge was above average difficulty. It is challenging enough both too difficult.

### Giving more time, things I will like to improve

- Code quality.
- Test coverage.
- score system.
- add a leader board.
- authentication.
- improved animations.
- add game sound.
- add game settings
