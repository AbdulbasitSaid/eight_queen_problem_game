import 'package:eight_queen_problem_game/features/chess_board/data/models/board_model.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/draggable_queen_component.dart';
import 'package:flutter/material.dart';

class PlayingStateCell extends StatelessWidget {
  const PlayingStateCell({
    super.key,
    required this.gameBoardState,
    required this.row,
    required this.col,
  });

  final BoardModel gameBoardState;
  final int row;
  final int col;

  @override
  Widget build(BuildContext context) {
    bool checkIfSafe = gameBoardState.isSafe != true &&
        gameBoardState.attackingQueenPosition != null &&
        gameBoardState.attackingQueenPosition!['row'] == row &&
        gameBoardState.attackingQueenPosition!['col'] == col;
    return Container(
      decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.overlay,
        border: Border.all(
            color: Theme.of(context).colorScheme.secondary.withOpacity(.6)),
        //
        color:
            // show red color only on the attacking queens positions
            checkIfSafe ? Colors.red : defaultColors(context),
      ),
      child: gameBoardState.board[row][col] == 1
          ? DraggableQueenComponent(
              dragTargetModel: DragTargetModel(
                dragType: DragTargetType.board,
                previousPosition: {
                  'row': row,
                  'col': col,
                },
              ),
            )
          : null,
    );
  }

  Color defaultColors(BuildContext context) {
    return (row + col) % 2 == 0
        ? Theme.of(context).colorScheme.secondary.withOpacity(.6)
        : Theme.of(context).colorScheme.background.withOpacity(.6);
  }
}
