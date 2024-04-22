import 'package:eight_queen_problem_game/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChessBoardComponent extends StatelessWidget {
  const ChessBoardComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              return DragTarget<int>(builder: (
                context,
                candidateData,
                rejectedData,
              ) {
                return Container(
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.overlay,
                    border: Border.all(
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(.6)),
                    color: (index % 2 == 0 &&
                                index ~/ Constants.numberOfQueens % 2 == 0) ||
                            (index % 2 != 0 &&
                                index ~/ Constants.numberOfQueens % 2 != 0)
                        ? Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(.6)
                        : Theme.of(context)
                            .colorScheme
                            .background
                            .withOpacity(.6),
                  ),
                );
              });
            }),
      ),
    );
  }
}
