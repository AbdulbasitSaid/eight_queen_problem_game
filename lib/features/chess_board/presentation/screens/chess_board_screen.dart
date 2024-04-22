import 'package:eight_queen_problem_game/core/constants.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/background_image_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChessBoardScreen extends HookWidget {
  const ChessBoardScreen({super.key});
  static const String routeName = '/chess-board';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImageComponent(),
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(18.sp),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // App bar
                  Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .background
                          .withOpacity(.4),
                      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            context.pop(true);
                          },
                          icon: const Icon(
                            Icons.cancel,
                          ),
                          color: Theme.of(context)
                              .colorScheme
                              .error
                              .withOpacity(.8),
                        ),
                        Text(
                          'Chess Board',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.sp,
                  ),
                  // Notification Area
                  Container(
                    padding: EdgeInsets.all(12.sp),
                    height: 100.sp,
                    width: ScreenUtil().screenWidth,
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .background
                          .withOpacity(.4),
                      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                    ),
                  ),
                  // Notification Area
                  SizedBox(
                    height: 12.sp,
                  ),
                  // Chess board
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .background
                          .withOpacity(.4),
                      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                    ),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: GridView.builder(
                          padding: EdgeInsets.all(12.sp),
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: Constants.numberOfQueens,
                            childAspectRatio: 1,
                          ),
                          itemCount: Constants.numberOfQueens *
                              Constants.numberOfQueens,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                                color: (index % 2 == 0 &&
                                            index ~/
                                                    Constants.numberOfQueens %
                                                    2 ==
                                                0) ||
                                        (index % 2 != 0 &&
                                            index ~/
                                                    Constants.numberOfQueens %
                                                    2 !=
                                                0)
                                    ? Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withOpacity(.4)
                                    : Theme.of(context)
                                        .colorScheme
                                        .background
                                        .withOpacity(.4),
                              ),
                            );
                          }),
                    ),
                  ),
                  // Chess board
                  SizedBox(
                    height: 12.sp,
                  ),
                  Container(
                    padding: EdgeInsets.all(12.sp),
                    height: 100.sp,
                    width: ScreenUtil().screenWidth,
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .background
                          .withOpacity(.4),
                      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // App bar
        ],
      ),
    );
  }
}
