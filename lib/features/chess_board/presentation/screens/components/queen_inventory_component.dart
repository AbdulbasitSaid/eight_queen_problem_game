import 'package:eight_queen_problem_game/features/chess_board/presentation/cubit/game_board_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'draggable_queen_component.dart';

class QueenInventoryComponent extends StatelessWidget {
  const QueenInventoryComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final gameBoardState = context.watch<GameBoardCubit>().state;

    return DragTarget<DragTargetModel>(onAcceptWithDetails: (data) {
      if (data.data.previousPosition!['row'] == null ||
          data.data.previousPosition!['col'] == null ||
          gameBoardState.attackingQueenPosition != null) {
        return;
      }

      context.read<GameBoardCubit>().removeQueen(
          row: data.data.previousPosition!['row']!,
          col: data.data.previousPosition!['col']!);
    }, builder: (context, candidateData, rejectedData) {
      return Container(
        padding: EdgeInsets.all(12.sp),
        width: ScreenUtil().screenWidth,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background.withOpacity(.4),
          borderRadius: BorderRadius.all(Radius.circular(8.sp)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // if gameBoardState.isSafe return a DraggableQueenComponent else return a Container
            if (gameBoardState.isSafe)
              ...List.generate(
                gameBoardState.remainingQueensCount,
                (index) => const DraggableQueenComponent(
                  dragTargetModel: DragTargetModel(
                    dragType: DragTargetType.inventory,
                  ),
                ),
              )
            else
              Flexible(
                child: Text(
                  "👑 at row:${gameBoardState.attackingQueenPosition!["row"]}, column:${gameBoardState.attackingQueenPosition!["col"]} is attacking poor 👸🏼. You can't place more queens. To continue, make sure no Queens👸🏼 are attacked on the board.😊",
                  softWrap: true,
                  overflow: TextOverflow.clip,
                ),
              ),
          ],
        ),
      );
    });
  }
}
