import 'package:eight_queen_problem_game/features/chess_board/presentation/screens/chess_board_screen.dart';
import 'package:eight_queen_problem_game/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: HomeScreen.routeName,
      pageBuilder: (context, state) => const MaterialPage(child: HomeScreen()),
    ),
    GoRoute(
      path: ChessBoardScreen.routeName,
      pageBuilder: (context, state) =>
          const MaterialPage(child: ChessBoardScreen()),
    ),
  ],
  initialLocation: '/chess-board',
  restorationScopeId: HomeScreen.routeName,
  errorPageBuilder: (context, state) => MaterialPage(
    child: Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Text('Error: ${state.error?.message}'),
      ),
    ),
  ),
);
