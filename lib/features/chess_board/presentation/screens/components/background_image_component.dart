import 'package:eight_queen_problem_game/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundImageComponent extends StatelessWidget {
  const BackgroundImageComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      // add tint color to the background image
      color: Colors.black.withOpacity(.4),
      colorBlendMode: BlendMode.darken,
      height: ScreenUtil().screenHeight,
      width: ScreenUtil().screenWidth,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) =>
          loadingProgress == null
              ? child
              : const Center(
                  child: CircularProgressIndicator(),
                ),
      image: AssetImage(Constants.backgroundImages[1]),
    );
  }
}
