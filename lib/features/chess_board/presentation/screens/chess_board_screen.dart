import 'package:eight_queen_problem_game/core/constants.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/background_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ChessBoardScreen extends HookWidget {
  const ChessBoardScreen({super.key});
  static const String routeName = '/chess-board';
  @override
  Widget build(BuildContext context) {
    final svgState = useState<SvgPicture?>(null);

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
                            return DragTarget<SvgPicture>(
                                onAcceptWithDetails: (data) =>
                                    svgState.value = data.data,
                                builder: (
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
                                                  index ~/
                                                          Constants
                                                              .numberOfQueens %
                                                          2 ==
                                                      0) ||
                                              (index % 2 != 0 &&
                                                  index ~/
                                                          Constants
                                                              .numberOfQueens %
                                                          2 !=
                                                      0)
                                          ? Theme.of(context)
                                              .colorScheme
                                              .secondary
                                              .withOpacity(.6)
                                          : Theme.of(context)
                                              .colorScheme
                                              .background
                                              .withOpacity(.6),
                                    ),
                                    child: svgState.value ??
                                        const SizedBox.shrink(),
                                  );
                                });
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
                    child: Row(
                      children: [
                        Draggable<SvgPicture>(
                          data: SvgPicture.asset(
                            Constants.blackQueenSvgPath,
                            height: 22.sp,
                            width: 22.sp,
                          ),
                          feedback: SvgPicture.asset(
                            Constants.blackQueenSvgPath,
                            height: 36.sp,
                            width: 36.sp,
                          ),
                          childWhenDragging: SvgPicture.asset(
                            Constants.blackQueenSvgPath,
                            height: 28.sp,
                            width: 28.sp,
                            colorFilter: ColorFilter.mode(
                                Theme.of(context)
                                    .colorScheme
                                    .onBackground
                                    .withAlpha(100),
                                BlendMode.srcIn),
                          ),
                          child: SvgPicture.asset(
                            Constants.blackQueenSvgPath,
                            height: 28.sp,
                            width: 28.sp,
                          ),
                        ),
                      ],
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
