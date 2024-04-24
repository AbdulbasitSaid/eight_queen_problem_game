import 'dart:developer';
import 'dart:math';

import 'package:eight_queen_problem_game/core/constants.dart';
import 'package:eight_queen_problem_game/features/chess_board/data/models/board_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/safe_check_model.dart';

class GameBoardCubit extends Cubit<BoardModel> {
  GameBoardCubit()
      : super(
          BoardModel(
            board: List.generate(
              Constants.numberOfQueens,
              (_) => List.filled(Constants.numberOfQueens, 0),
            ),
            remainingQueensCount: Constants.numberOfQueens,
            size: 0,
            isSafe: true,
            isGameCompleted: false,
          ),
        );

  void placeQueenOnBoard({
    required int row,
    required int col,
  }) {
    final List<List<int>> board = state.board;
    final updatedState = state.copyWith(
      size: state.size + 1,
    );
    if (board[row][col] == 1) {
      return;
    }
    checkIsSave(row: row, col: col);

    board[row][col] = 1;
    emit(
      BoardModel(
          board: board,
          remainingQueensCount: state.remainingQueensCount - 1,
          size: updatedState.size,
          isSafe: state.isSafe,
          attackingQueenPosition: state.attackingQueenPosition,
          isGameCompleted: state.isGameCompleted),
    );

    if (state.remainingQueensCount == 0 && state.isSafe) {
      emit(
        BoardModel(
          board: board,
          remainingQueensCount: state.remainingQueensCount,
          size: updatedState.size,
          isSafe: state.isSafe,
          attackingQueenPosition: state.attackingQueenPosition,
          isGameCompleted: true,
        ),
      );
    }
  }

  void moveQueen({
    required int row,
    required int col,
    required int newRow,
    required int newCol,
  }) {
    if (state.board[newRow][newCol] == 1) {
      return;
    }
    print('Moving queen from $row, $col to $newRow, $newCol');
    // Remove the queen from the current position is not same as attacking queen
    if (state.isSafe == false &&
        row != state.attackingQueenPosition!['row'] &&
        col != state.attackingQueenPosition!['col']) {
      return;
    }
    removeQueen(row: row, col: col);
    placeQueenOnBoard(row: newRow, col: newCol);
  }

  void resetBoard() {
    emit(
      BoardModel(
        board: List.generate(
          Constants.numberOfQueens,
          (_) => List.filled(Constants.numberOfQueens, 0),
        ),
        remainingQueensCount: 8,
        size: 0,
        isSafe: true,
        isGameCompleted: false,
      ),
    );
  }

  void checkIsSave({
    required int row,
    required int col,
  }) {
    final List<List<int>> board = state.board;

    final updatedState = state.copyWith(
      isSafe: _isSafe(board, row, col).isSafe,
      attackingQueenPosition: _isSafe(board, row, col).attackingQueenPosition,
    );
    emit(
      BoardModel(
        board: board,
        remainingQueensCount: state.remainingQueensCount,
        size: state.size,
        isSafe: updatedState.isSafe,
        attackingQueenPosition: updatedState.attackingQueenPosition,
        isGameCompleted: state.isGameCompleted,
      ),
    );
  }

  void removeQueen({
    required int row,
    required int col,
  }) {
    final List<List<int>> board = state.board;
    board[row][col] = 0;
    final updatedState = state.copyWith(
      remainingQueensCount: state.remainingQueensCount + 1,
      size: state.size - 1,
    );

    emit(
      BoardModel(
        board: board,
        remainingQueensCount: updatedState.remainingQueensCount,
        size: updatedState.size,
        isSafe: state.isSafe,
        isGameCompleted: false,
      ),
    );
    checkIsSave(row: row, col: col);
  }

  SafeCheckModel _isSafe(List<List<int>> board, int row, int col) {
    // Check horizontally
    for (int i = 0; i < Constants.numberOfQueens; i++) {
      if (i != col && board[row][i] == 1) {
        return SafeCheckModel(
            isSafe: false, attackingQueenPosition: {'row': row, 'col': col});
      }
    }

    // Check vertically
    for (int i = 0; i < Constants.numberOfQueens; i++) {
      if (i != row && board[i][col] == 1) {
        return SafeCheckModel(
            isSafe: false, attackingQueenPosition: {'row': row, 'col': col});
      }
    }

    // Check diagonals
    for (int i = 1; i < Constants.numberOfQueens; i++) {
      List<int> directions = [
        -1,
        1
      ]; // This represents the direction vector for diagonals
      for (int d in directions) {
        for (int j in directions) {
          int x = row + i * d;
          int y = col + i * j;
          if (x >= 0 &&
              x < Constants.numberOfQueens &&
              y >= 0 &&
              y < Constants.numberOfQueens &&
              board[x][y] == 1) {
            return SafeCheckModel(
                isSafe: false,
                attackingQueenPosition: {'row': row, 'col': col});
          }
        }
      }
    }

    // If no queens are attacking the current position, it is safe
    return const SafeCheckModel(isSafe: true, attackingQueenPosition: null);
  }

  // generate solution
  List<List<BoardModel>> _solveQueenProblem(int row, List<List<int>> board) {
    List<List<BoardModel>> solutions = [];
    if (row == Constants.numberOfQueens) {
      solutions.add([
        BoardModel(
          board: board,
          remainingQueensCount: 0,
          size: Constants.numberOfQueens,
          isSafe: true,
          isGameCompleted: true,
        )
      ]);
      return solutions;
    }

    for (int col = 0; col < Constants.numberOfQueens; col++) {
      if (_isSafe(board, row, col).isSafe) {
        board[row][col] = 1;
        solutions.addAll(_solveQueenProblem(row + 1, board));
        board[row][col] = 0;
      }
    }
    return solutions;
  }

  BoardModel _randomlyPickASolution(List<List<BoardModel>> solutions) {
    var randomIndex = Random().nextInt(solutions.length);
    return solutions[randomIndex][0];
  }
}
