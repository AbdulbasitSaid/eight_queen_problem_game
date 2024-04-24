import 'package:bloc_test/bloc_test.dart';
import 'package:eight_queen_problem_game/core/constants.dart';
import 'package:eight_queen_problem_game/features/chess_board/data/models/board_model.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/cubit/game_board_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GameBoardCubit with Freezed', () {
    late GameBoardCubit cubit;

    setUp(() {
      cubit = GameBoardCubit();
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is correct', () {
      expect(cubit.state.board.length, Constants.numberOfQueens);
      expect(cubit.state.isSafe, true);
      expect(cubit.state.remainingQueensCount, Constants.numberOfQueens);
    });

    blocTest<GameBoardCubit, BoardModel>(
      'placeQueenOnBoard places queen correctly and updates state',
      build: () => GameBoardCubit(),
      act: (cubit) => cubit.placeQueenOnBoard(row: 0, col: 0),
      expect: () => [
        predicate<BoardModel>((state) =>
            state.remainingQueensCount ==
                Constants.numberOfQueens && // Initial state check
            state.size == 0),
        predicate<BoardModel>((state) =>
                state.board[0][0] ==
                    1 && // Check if the queen is placed correctly
                state.remainingQueensCount ==
                    Constants.numberOfQueens -
                        1 && // Check if the count is decremented
                state.size == 1 && // Ensure size is incremented
                state.isSafe // Should still be safe after one placement
            )
      ],
    );
// requires the following tests:
// Place Queen Test: Ensures a queen is placed correctly and updates the board state.
// Safety Check Test: Confirms the safety mechanism by trying to place two queens on the same row, which should set isSafe to false.
// Reset Test: Tests if the resetBoard method correctly resets the game state after changes have been made.
  });
}
