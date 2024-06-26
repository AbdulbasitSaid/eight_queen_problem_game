import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationAreaComponent extends StatelessWidget {
  const NotificationAreaComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      height: 100.sp,
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background.withOpacity(.4),
        borderRadius: BorderRadius.all(Radius.circular(8.sp)),
      ),
    );
  }
}
