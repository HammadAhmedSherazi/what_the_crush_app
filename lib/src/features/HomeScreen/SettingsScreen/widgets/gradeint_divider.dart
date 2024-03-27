import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gradient_Divider extends StatelessWidget {
  const Gradient_Divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 17.w,
        height: 1.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfff27121),
              Color(0xffe94057),
              Color(0xff8a2387),
            ],
          ),
        ),
        child: Divider(
          color: Colors.transparent,
          thickness: 2,
          indent: 14,
        ),
      ),
    );
  }
}
