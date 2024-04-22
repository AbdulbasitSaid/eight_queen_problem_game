
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/queen_compenent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QueenInventoryComponent extends StatelessWidget {
  const QueenInventoryComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      height: 100.sp,
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background.withOpacity(.4),
        borderRadius: BorderRadius.all(Radius.circular(8.sp)),
      ),
      child: Row(
        children: [
          Draggable<int>(
            data: 1,
            feedback: const QueenComponent(size: 26),
            childWhenDragging: QueenComponent(
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onBackground.withAlpha(100),
                  BlendMode.srcIn),
            ),
            child: const QueenComponent(),
          ),
        ],
      ),
    );
  }
}