import 'package:eight_queen_problem_game/features/chess_board/presentation/cubit/game_board_cubit.dart';
import 'package:eight_queen_problem_game/utils/game_theme.dart';
import 'package:eight_queen_problem_game/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/simple_block_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = SimpleBlocObserver();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider<GameBoardCubit>(
        create: (context) => GameBoardCubit(),
        child: MaterialApp.router(
            title: 'Eight Queen Problem Game',
            routerConfig: router,
            theme: GameTheme.getTheme(ThemeType.light)),
      ),
    );
  }
}
