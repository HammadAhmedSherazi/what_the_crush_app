import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class Receive_Msg_Box extends StatelessWidget {
  const Receive_Msg_Box({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              width: 240.w,
              height: 139.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: AppColors.bgGray.withOpacity(0.1)),
              child: Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          "Penelope, your friend sent you a\ndiscreet crush message!\nWant to know who it is!?",
                      style: TextStyle(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp),
                    ),
                    TextSpan(
                      text: "\nDownload",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: AppColors.blue),
                    ),
                    TextSpan(
                      text: " the app or visit",
                      style: TextStyle(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp),
                    ),
                    TextSpan(
                      text: "\nWadaCrush.com",
                      style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp),
                    )
                  ]),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '2:54 PM',
                style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Send_Msg_Box extends StatelessWidget {
  final String txt;
  Send_Msg_Box({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.w,
      height: 39.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: AppColors.blue.withOpacity(0.1)),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
        ),
      ),
    );
  }
}
