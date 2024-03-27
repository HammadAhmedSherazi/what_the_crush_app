import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.bg,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              // padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.border, width: 3),
              ),
              width: 45,
              height: 45,
              child: const Icon(
                Icons.close,
                color: AppColors.purpleP500,
                size: 18,
              ),
            ),
          ),
        ],
        title: Text(
          'notifications',
          style: Theme.of(context)
              .textTheme
              .displayLarge
              ?.copyWith(color: AppColors.purpleP500),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 25.h),
        scrollDirection: Axis.vertical,
        itemCount: 14,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 25.verticalSpace,
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'free crush message to  ',
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                    TextSpan(
                        text: '(76a85267m)',
                        style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 14.sp,
                        )),
                    TextSpan(
                      text: 'expire today',
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                  ]),
                ),
                5.verticalSpace,
                Text(
                  'just now',
                  style: TextStyle(
                    color: AppColors.textInactive,
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                  ),
                ),
                5.verticalSpace,
                Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: AppColors.textPrimary,
                      size: 14.sp,
                    ),
                    Text(
                      'you’ll be matched only when you crush 76a85267m back',
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
                5.verticalSpace,
                Text(
                  'send free discreet crush messages',
                  style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                Divider(
                  color: AppColors.border,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
