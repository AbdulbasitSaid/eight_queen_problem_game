import 'package:eight_queen_problem_game/core/constants.dart';
import 'package:eight_queen_problem_game/features/chess_board/data/models/board_model.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/cubit/game_board_cubit.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/chess_board_screen.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/background_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {
    final gameState = context.watch<GameBoardCubit>().state;
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '8 👸🏼Queens Puzzle',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.sp,
                  ),
                  // Start new game container
                  Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .background
                          .withOpacity(.4),
                      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Start New Game',
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .background
                                    .withOpacity(.4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.sp)),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Play with hints',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  SizedBox(
                                    height: 12.sp,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(.8),
                                    ),
                                    onPressed: () {
                                      context
                                          .goNamed(ChessBoardScreen.routeName);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.play_arrow_rounded,
                                          size: 18.sp,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                        Text(
                                          "Play",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              ' or ',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Container(
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .background
                                    .withOpacity(.4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.sp)),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Play without hints',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  SizedBox(
                                    height: 12.sp,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .secondary
                                          .withOpacity(.8),
                                    ),
                                    onPressed: () {
                                      context
                                          .read<GameBoardCubit>()
                                          .resetBoard();
                                      context
                                          .goNamed(ChessBoardScreen.routeName);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.play_arrow_rounded,
                                          size: 18.sp,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                        Text(
                                          "Play",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // play with hints card container
                        SizedBox(
                          height: 12.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.sp,
                  ),
                  // Continue game container
                  Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .background
                          .withOpacity(.4),
                      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Current Game',
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        // game progress
                        BlocBuilder<GameBoardCubit, BoardModel>(
                          builder: (context, state) {
                            return LinearProgressIndicator(
                              minHeight: 12.sp,
                              value: (state.size / Constants.numberOfQueens),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(.8),
                              ),
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .background
                                  .withOpacity(.4),
                            );
                          },
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        // number of queens placed
                        Text('Queens placed: ${gameState.size}',
                            style: Theme.of(context).textTheme.titleMedium),
                        SizedBox(
                          height: 12.sp,
                        ),
                        // continue game button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(.8),
                              ),
                              onPressed: () {
                                context.goNamed(ChessBoardScreen.routeName);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.play_arrow_rounded,
                                    size: 18.sp,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  Text(
                                    "Continue",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
