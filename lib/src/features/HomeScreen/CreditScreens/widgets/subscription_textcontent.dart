import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class RowText extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  const RowText({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 69.w,
          height: 33.h,
          child: Text(
            text1,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.textPrimary,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
        Spacer(),
        // SizedBox(width: 0.2.sw),
        Container(
          width: 49.w,
          height: 35.h,
          child: Text(
            text2,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.textPrimary,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                ),
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 88.w,
              // height: 40.h,
              child: Text(
                text3,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.textPrimary,
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class RowIcon extends StatelessWidget {
  final String text1;

  const RowIcon({
    Key? key,
    required this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        12.horizontalSpace,
        Icon(
          Icons.check_circle,
          color: Colors.purple,
          size: 16.sp,
        ),
        SizedBox(width: 0.2.sw),
        Container(
          width: 0.3.sw,
          child: Text(
            text1,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        SizedBox(width: 0.1.sw),
        Container(
          width: 14.w,
          height: 14.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xfff27121),
                Color(0xffe94057),
                Color(0xff8a2387),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
            ),
          ),
          child: Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}
