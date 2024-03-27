import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class showPostText extends StatefulWidget {
  const showPostText({super.key});

  @override
  State<showPostText> createState() => _showPostTextState();
}

class _showPostTextState extends State<showPostText> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.bg,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5), // Background color with opacity
          image: DecorationImage(
            image: AssetImage('assets/images/wallposter.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            20.verticalSpace,
            Row(
              children: [
                Container(
                  height: 3.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        topRight: Radius.circular(5)),
                    color: AppColors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 3,
                        width: 50,
                        color: AppColors.purpleP500,
                      )
                    ],
                  ),
                ),
                17.horizontalSpace,
                Container(
                  height: 3.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        topRight: Radius.circular(5)),
                    color: AppColors.white,
                  ),
                )
              ],
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/d1.png'),
                    ),
                    10.horizontalSpace,
                    Text("Annabelle",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp)),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    // padding: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.white, width: 1),
                    ),
                    width: 45,
                    height: 45,
                    child: const Icon(
                      Icons.close,
                      color: AppColors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.6.sh,
            ),
            38.verticalSpace,
            Text(
              'love yourself before loving others',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 26.h,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.purpleP500, width: 1),
              ),
              width: 60,
              height: 48,
              child: Icon(
                Icons.star_border_rounded,
                color: AppColors.purpleP500,
                size: 25.sp,
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
