import 'package:eight_queen_problem_game/core/game_theme.dart';
import 'package:eight_queen_problem_game/core/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Eight Queen Problem Game',
        routerConfig: router,
        theme: GameTheme.getTheme(ThemeType.light));
  }
}
