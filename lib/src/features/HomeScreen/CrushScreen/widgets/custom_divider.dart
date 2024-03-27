import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class Custom_Divider extends StatelessWidget {
  final String txt;
  const Custom_Divider({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.textInactive,
            thickness: 1,
            endIndent: 10,
          ),
        ),
        10.horizontalSpace,
        Text(
          txt,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        10.horizontalSpace,
        const Expanded(
          child: Divider(
            color: AppColors.textInactive,
            thickness: 2,
            indent: 10,
          ),
        ),
      ],
    );
  }
}
