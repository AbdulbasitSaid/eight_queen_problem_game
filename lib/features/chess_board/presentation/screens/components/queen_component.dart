import 'package:eight_queen_problem_game/core/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QueenComponent extends StatelessWidget {
  const QueenComponent({
    super.key,
    this.size = 36,
    this.colorFilter,
  });

  final double size;
  final ColorFilter? colorFilter;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Constants.blackQueenSvgPath,
      height: size.sp,
      width: size.sp,
      colorFilter: colorFilter,
    );
  }
}
