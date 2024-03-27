import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/profile_others3.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/AppGradients.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class Report_undoContent extends StatelessWidget {
  const Report_undoContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.light_max,
                          color: Colors.red,
                        ),
                        10.horizontalSpace,
                        Text(
                          'Inappropriate content?',
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "show zero tolerance to profanity,\ninappropriate and illicit content",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                    ),
                  ],
                ),
                // SizedBox(width: 10.w),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Profile_Other3()));
                  },
                  child: Container(
                    width: 100.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: AppGradients.secondaryButtonGradient,
                    ),
                    child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'undo',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
