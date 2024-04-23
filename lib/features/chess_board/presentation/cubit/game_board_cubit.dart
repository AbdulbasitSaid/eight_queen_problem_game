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
            size: Constants.numberOfQueens,
            isSafe: true,
            isGameCompleted: false,
          ),
        );

  void placeQueenOnBoard({
    required int row,
    required int col,
  }) {
    final List<List<int>> board = state.board;
    final isMoveSafe = state.copyWith(
      isSafe: _isSafe(board, row, col).isSafe,
      attackingQueenPosition: _isSafe(board, row, col).attackingQueenPosition,
    );
    if (board[row][col] == 1) {
      return;
    }
    board[row][col] = 1;

    emit(
      BoardModel(
          board: board,
          remainingQueensCount: state.remainingQueensCount - 1,
          size: Constants.numberOfQueens,
          isSafe: isMoveSafe.isSafe,
          attackingQueenPosition: isMoveSafe.attackingQueenPosition,
          isGameCompleted: state.isGameCompleted),
    );

    if (state.remainingQueensCount == 0 && state.isSafe) {
      emit(
        BoardModel(
          board: board,
          remainingQueensCount: state.remainingQueensCount,
          size: Constants.numberOfQueens,
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
        size: Constants.numberOfQueens,
        isSafe: true,
        isGameCompleted: false,
      ),
    );
  }

  void removeQueen({
    required int row,
    required int col,
  }) {
    final List<List<int>> board = state.board;
    board[row][col] = 0;
    emit(
      BoardModel(
        board: board,
        remainingQueensCount: state.remainingQueensCount + 1,
        size: Constants.numberOfQueens,
        isSafe: true,
        isGameCompleted: false,
      ),
    );
  }

  SafeCheckModel _isSafe(List<List<int>> board, int row, int col) {
    for (int i = 0; i < col; i++) {
      if (board[row][i] == 1) {
        return SafeCheckModel(isSafe: false, attackingQueenPosition: {
          'row': row,
          'col': i,
        });
      }
    }

    for (int i = col; i < Constants.numberOfQueens; i++) {
      if (board[row][i] == 1) {
        return SafeCheckModel(isSafe: false, attackingQueenPosition: {
          'row': row,
          'col': i,
        });
      }
    }

    for (int i = 0; i < row; i++) {
      if (board[i][col] == 1) {
        return SafeCheckModel(isSafe: false, attackingQueenPosition: {
          'row': i,
          'col': col,
        });
      }
    }

    for (int i = row; i < Constants.numberOfQueens; i++) {
      if (board[i][col] == 1) {
        return SafeCheckModel(isSafe: false, attackingQueenPosition: {
          'row': i,
          'col': col,
        });
      }
    }

    for (int i = row, j = col; i >= 0 && j >= 0; i--, j--) {
      if (board[i][j] == 1) {
        return SafeCheckModel(isSafe: false, attackingQueenPosition: {
          'row': i,
          'col': j,
        });
      }
    }

    for (int i = row, j = col;
        i < Constants.numberOfQueens && j < Constants.numberOfQueens;
        i++, j++) {
      if (board[i][j] == 1) {
        return SafeCheckModel(isSafe: false, attackingQueenPosition: {
          'row': i,
          'col': j,
        });
      }
    }

    for (int i = row, j = col;
        i >= 0 && j < Constants.numberOfQueens;
        i--, j++) {
      if (board[i][j] == 1) {
        return SafeCheckModel(isSafe: false, attackingQueenPosition: {
          'row': i,
          'col': j,
        });
      }
    }

    for (int i = row, j = col;
        i < Constants.numberOfQueens && j >= 0;
        i++, j--) {
      if (board[i][j] == 1) {
        return SafeCheckModel(isSafe: false, attackingQueenPosition: {
          'row': i,
          'col': j,
        });
      }
    }

    return const SafeCheckModel(isSafe: true, attackingQueenPosition: null);
  }
}
