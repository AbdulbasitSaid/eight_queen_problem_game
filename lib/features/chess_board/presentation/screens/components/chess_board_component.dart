import 'package:eight_queen_problem_game/core/constants.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/cubit/game_board_cubit.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/draggable_queen_component.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/playing_state_cell.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/winning_state_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChessBoardComponent extends StatelessWidget {
  const ChessBoardComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final gameBoardState = context.watch<GameBoardCubit>().state;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background.withOpacity(.4),
        borderRadius: BorderRadius.all(Radius.circular(8.sp)),
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: GridView.builder(
            padding: EdgeInsets.all(12.sp),
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Constants.numberOfQueens,
              childAspectRatio: 1,
            ),
            itemCount: Constants.numberOfQueens * Constants.numberOfQueens,
            itemBuilder: (context, index) {
              int row = index ~/ Constants.numberOfQueens;
              int col = index % Constants.numberOfQueens;
              return DragTarget<DragTargetModel>(onAcceptWithDetails: (data) {
                if (data.data.dragType == DragTargetType.inventory) {
                  context
                      .read<GameBoardCubit>()
                      .placeQueenOnBoard(row: row, col: col);
                } else if (data.data.dragType == DragTargetType.board) {
                  context.read<GameBoardCubit>().moveQueen(
                        row: data.data.previousPosition!['row']!,
                        col: data.data.previousPosition!['col']!,
                        newRow: row,
                        newCol: col,
                      );
                }
              }, builder: (
                context,
                candidateData,
                rejectedData,
              ) {
                return gameBoardState.isGameCompleted
                    ? WinningStateCell(row: row, col: col)
                    : PlayingStateCell(
                        gameBoardState: gameBoardState, row: row, col: col);
              });
            }),
      ),
    );
  }
}
