import 'package:eight_queen_problem_game/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background.withOpacity(.4),
        borderRadius: BorderRadius.all(Radius.circular(8.sp)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              context.goNamed(HomeScreen.routeName);
            },
            icon: const Icon(
              Icons.power_settings_new_rounded,
            ),
            color: Theme.of(context).colorScheme.error.withOpacity(.8),
          ),
          Text(
            '8 Queens Problem Game',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
