import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class subscribed_content_sheet extends StatefulWidget {
  final String txt1;
  final String txt2;
  final String txt3;
  final FontWeight fontWeight1;
  final FontWeight fontWeight2;
  final FontWeight fontWeight3;

  const subscribed_content_sheet({
    Key? key,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.fontWeight1,
    required this.fontWeight2,
    required this.fontWeight3,
  }) : super(key: key);

  @override
  State<subscribed_content_sheet> createState() =>
      _subscribed_content_sheetState();
}

class _subscribed_content_sheetState extends State<subscribed_content_sheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 5.h),
      child: Row(
        children: [
          Container(
            width: 15.w,
            height: 15.h,
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
                size: 13.sp,
              ),
            ),
          ),
          9.horizontalSpace,
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: 14.sp,
                  ),
              children: [
                TextSpan(
                  text: widget.txt1,
                  style: TextStyle(
                    color: AppColors.purpleP500,
                    fontWeight: widget.fontWeight1,
                  ),
                ),
                TextSpan(
                  text: widget.txt2,
                  style: TextStyle(
                    color: AppColors.purpleP500,
                    fontWeight: widget.fontWeight2,
                  ),
                ),
                TextSpan(
                  text: widget.txt3,
                  style: TextStyle(
                    color: AppColors.purpleP500,
                    fontWeight: widget.fontWeight3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
