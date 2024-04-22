import 'package:eight_queen_problem_game/core/constants.dart';
import 'package:eight_queen_problem_game/features/chess_board/data/models/board_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameBoardCubit extends Cubit<BoardModel> {
  GameBoardCubit()
      : super(
          BoardModel(
            board: List.generate(
              Constants.numberOfQueens,
              (_) => List.filled(Constants.numberOfQueens, 0),
            ),
            placesQueensCount: 0,
            size: Constants.numberOfQueens,
            isSafe: true,
            isGameCompleted: false,
          ),
        );
  // place a queen on the board
  void placeQueen({
    required int row,
    required int col,
  }) {
    final List<List<int>> board = state.board;
    if (_isSafe(board, row, col)) {
      board[row][col] = 1;
      emit(
        BoardModel(
          board: board,
          placesQueensCount: state.placesQueensCount + 1,
          size: Constants.numberOfQueens,
          isSafe: true,
          isGameCompleted: state.placesQueensCount == Constants.numberOfQueens,
        ),
      );
    } else {
      emit(
        BoardModel(
            board: board,
            placesQueensCount: state.placesQueensCount,
            size: Constants.numberOfQueens,
            isSafe: false,
            isGameCompleted:
                state.placesQueensCount == Constants.numberOfQueens),
      );
    }
  }

  void resetGame() {
    emit(
      BoardModel(
        board: List.generate(
          Constants.numberOfQueens,
          (_) => List.filled(Constants.numberOfQueens, 0),
        ),
        placesQueensCount: 0,
        size: Constants.numberOfQueens,
        isSafe: true,
        isGameCompleted: false,
      ),
    );
  }

  // remove a queen from the board
  void removeQueen({
    required int row,
    required int col,
  }) {
    final List<List<int>> board = state.board;
    board[row][col] = 0;
    emit(
      BoardModel(
        board: board,
        placesQueensCount: state.placesQueensCount - 1,
        size: Constants.numberOfQueens,
        isSafe: true,
        isGameCompleted: false,
      ),
    );
  }

  // show attacking queen
  void showAttackingQueen({
    required int row,
    required int col,
  }) {}

  bool _isSafe(List<List<int>> board, int row, int col) {
// check if there is a queen in the same row to the
    // right
    for (int i = 0; i < col; i++) {
      if (board[row][i] == 1) {
        return false;
      }
    }
    // check if there is a queen in the same row to the
    // left
    for (int i = col; i < Constants.numberOfQueens; i++) {
      if (board[row][i] == 1) {
        return false;
      }
    }

    // check if there is a queen in the same column
    // below
    for (int i = 0; i < row; i++) {
      if (board[i][col] == 1) {
        return false;
      }
    }
    // check if there is a queen in the same column
    // above
    for (int i = row; i < Constants.numberOfQueens; i++) {
      if (board[i][col] == 1) {
        return false;
      }
    }

    // check if there is a queen in the lower right
    // diagonal
    for (int i = row, j = col; i >= 0 && j >= 0; i--, j--) {
      if (board[i][j] == 1) {
        return false;
      }
    }
    // check if there is a queen in the upper left
    // diagonal
    for (int i = row, j = col;
        i < Constants.numberOfQueens && j < Constants.numberOfQueens;
        i++, j++) {
      if (board[i][j] == 1) {
        return false;
      }
    }
    // check if there is a queen in the lower left
    // diagonal
    for (int i = row, j = col;
        i >= 0 && j < Constants.numberOfQueens;
        i--, j++) {
      if (board[i][j] == 1) {
        return false;
      }
    }
    // check if there is a queen in the upper right
    // diagonal
    for (int i = row, j = col;
        i < Constants.numberOfQueens && j >= 0;
        i++, j--) {
      if (board[i][j] == 1) {
        return false;
      }
    }

    // if there is no queen in any of the above
    // positions, then it is safe to place a queen
    return true;
  }
}
