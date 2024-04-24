import 'package:confetti/confetti.dart';
import 'package:eight_queen_problem_game/features/chess_board/data/models/board_model.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/cubit/game_board_cubit.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/app_bar_component.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/background_image_component.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/chess_board_component.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/notification_area_component.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/queen_inventory_component.dart';
import 'package:eight_queen_problem_game/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChessBoardScreen extends StatefulWidget {
  const ChessBoardScreen({super.key});
  static const String routeName = '/chess-board';

  @override
  State<ChessBoardScreen> createState() => _ChessBoardScreenState();
}

class _ChessBoardScreenState extends State<ChessBoardScreen> {
  late ConfettiController confettiController;

  @override
  void initState() {
    confettiController =
        ConfettiController(duration: const Duration(seconds: 10));
    super.initState();
  }

  @override
  void dispose() {
    confettiController.dispose();
    super.dispose();
  }

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
                  const AppBarComponent(),
                  SizedBox(
                    height: 12.sp,
                  ),
                  // Notification Area
                  const NotificationAreaComponent(),
                  // Notification Area
                  SizedBox(
                    height: 12.sp,
                  ),
                  // Chess board
                  const ChessBoardComponent(),
                  // Chess board
                  SizedBox(
                    height: 12.sp,
                  ),
                  const QueenInventoryComponent(),
                ],
              ),
            ),
          ),
          // App bar
          BlocListener<GameBoardCubit, BoardModel>(
            listener: (context, state) {
              if (state.isGameCompleted) {
                confettiController.play();
              }
            },
            child: Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                shouldLoop: false,
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.error,
                  Theme.of(context).colorScheme.onPrimary,
                  Theme.of(context).colorScheme.onSecondary,
                ],
              ),
            ),
          ),
          // Congratulation card
          BlocBuilder<GameBoardCubit, BoardModel>(
            builder: (context, state) {
              return state.isGameCompleted
                  ? Container(
                      alignment: Alignment.center,
                      height: ScreenUtil().screenHeight,
                      width: ScreenUtil().screenWidth,
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.2),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(12.sp),
                        margin: EdgeInsets.all(22.sp),
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .background
                              .withOpacity(.9),
                          borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Congratulations! You have successfully placed all the Queens👸🏼 on the board without attacking each other.🎉",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            SizedBox(
                              height: 12.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(.8),
                                  ),
                                  onPressed: () {
                                    context.read<GameBoardCubit>().resetBoard();
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.refresh,
                                        size: 18.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                      Text(
                                        "Play Again",
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
                                const Text("  or  "),
                                // exit
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .error
                                        .withOpacity(.8),
                                  ),
                                  onPressed: () {
                                    context.goNamed(HomeScreen.routeName);
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.power_settings_new,
                                        size: 18.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                      Text("Exit",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                              )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
