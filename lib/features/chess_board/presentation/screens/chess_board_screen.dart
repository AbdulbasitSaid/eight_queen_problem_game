import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/app_bar_component.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/background_image_component.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/chess_board_component.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/notification_area_component.dart';
import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/components/queen_inventory_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        ],
      ),
    );
  }
}
