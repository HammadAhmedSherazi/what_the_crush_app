import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CustomQuickFilterButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData? iconData;
  final String text;
  final bool isEqualWidth;

  const CustomQuickFilterButton({
    Key? key,
    this.onPressed,
    this.iconData,
    required this.text,
    this.isEqualWidth = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed?.call();
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        fixedSize: isEqualWidth ? Size.fromWidth(0.31.sw) : null,
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: AppColors.border,
            width: 2,
          ),
        ),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          if (iconData != null)
            Icon(
              iconData,
              color: AppColors.purpleP500,
              size: 11,
            ),
          if (iconData != null) 10.horizontalSpace,
          Text(
            text,
            style: TextStyle(
              color: AppColors.textInactive,
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
