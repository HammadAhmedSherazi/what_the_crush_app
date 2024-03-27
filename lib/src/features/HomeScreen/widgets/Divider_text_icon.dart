import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class DividerWithTextIcon extends StatelessWidget {
  final String txt;
  const DividerWithTextIcon({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        txt,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: AppColors.red,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
            ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        height: 1.h,
        width: 190.w,
        color: AppColors.textInactive,
      ),
      Icon(
        Icons.arrow_drop_up,
        color: AppColors.textInactive,
      )
    ]);
  }
}
