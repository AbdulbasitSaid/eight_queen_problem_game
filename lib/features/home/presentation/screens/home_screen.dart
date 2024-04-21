import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/chess_board_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.goNamed(ChessBoardScreen.routeName),
          child: const Text('Start Game'),
        ),
      ),
    );
  }
}
