import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/WallScreens/pages/WallPoster2Screens/Poster2BottomText.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class WallPoster2 extends StatefulWidget {
  const WallPoster2({super.key});

  @override
  State<WallPoster2> createState() => _WallPoster2State();
}

class _WallPoster2State extends State<WallPoster2> {
  bool isStarTapped = false;

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
            image: AssetImage('assets/images/wallimage3.jpeg'),
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
                  height: 2.h,
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
                20.horizontalSpace,
                Container(
                  height: 2.h,
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
                      backgroundImage:
                          AssetImage('assets/images/wallimage3.jpeg'),
                    ),
                    10.horizontalSpace,
                    Text("Anika",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isStarTapped = !isStarTapped;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10, left: 90),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.purpleP500, width: 1),
                    ),
                    width: 55.w,
                    height: 45.h,
                    child: isStarTapped
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: AppColors.red,
                                size: 25.sp,
                              ),
                              Text(
                                '1',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          )
                        : Icon(
                            Icons.star_border_rounded,
                            color: AppColors.purpleP500,
                            size: 25.sp,
                          ),
                  ),
                ),
                39.horizontalSpace,
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => poster2_BottomText()));
                  },
                  child: Icon(
                    CupertinoIcons.light_max,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    ));
  }
}
