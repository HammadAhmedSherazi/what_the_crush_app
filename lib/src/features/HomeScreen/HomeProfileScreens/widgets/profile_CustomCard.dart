import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class ProfileCustomCard extends StatefulWidget {
  final String txt1;
  final String txt2;
  ProfileCustomCard({
    Key? key,
    required this.txt1,
    required this.txt2,
  }) : super(key: key);

  @override
  State<ProfileCustomCard> createState() => _ProfileCustomCardState();
}

class _ProfileCustomCardState extends State<ProfileCustomCard> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              width: 340.w,
              height: 42.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.border, width: 1),
              ),
              child: Text(
                widget.txt1,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.red,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                    ),
              ),
            ),
            if (isExpanded)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                // width: 335.w,
                // height: 42.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(
                    color: AppColors.border.withOpacity(0.5),
                  ),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        widget.txt2,
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
