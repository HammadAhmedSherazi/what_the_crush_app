import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/profile_others_reportabuse.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/ProfileHeaderButtons.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/profileOthers1Header.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/profile_CustomCard.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class Profile_Other3 extends StatefulWidget {
  const Profile_Other3({Key? key}) : super(key: key);

  @override
  State<Profile_Other3> createState() => _Profile_Other3State();
}

class _Profile_Other3State extends State<Profile_Other3> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: AppColors.bg,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Image background
              Stack(children: [
                Container(
                  height: 0.4.sh,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/wallimage2.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: profile_headerButtons(),
                ),
              ]),

              Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: 380.w,
                      decoration: BoxDecoration(
                        color: Colors.white, // Your desired color
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 11.w),
                        child: Column(
                          children: [
                            40.verticalSpace,
                            ProfileOthers1Header(),
                            15.verticalSpace,
                            ProfileCustomCard(
                              txt1: 'attracted t0',
                              txt2: 'agender,cisgender',
                            ),
                            ProfileCustomCard(
                              txt1: 'race',
                              txt2: 'hispanic or latinx',
                            ),
                            ProfileCustomCard(
                              txt1: 'about',
                              txt2:
                                  'My name is Annabelle Parker and I enjoy\nmeeting new people and finding ways to\n help them have an uplifting experience. I\n enjoy r..',
                            ),
                            ProfileCustomCard(
                              txt1: 'interests',
                              txt2: 'dancing,modelling',
                            ),
                            10.verticalSpace,
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1.w, vertical: 10.h),
                              width: 340.w,
                              height: 410.h,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.border, width: 1),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    'wall posters (74)',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                          color: AppColors.red,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                        ),
                                  ),
                                  10.verticalSpace,
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 15.w),
                                    height: 1.h,
                                    width: 0.9.sw,
                                    color: AppColors.textInactive,
                                  ),
                                  10.verticalSpace,
                                  Row(
                                    children: [
                                      ProfileImages(
                                          'assets/images/wallimage1.jpeg'),
                                      ProfileImages(
                                          'assets/images/wallimage2.jpeg'),
                                    ],
                                  ),
                                  5.verticalSpace,
                                  Row(
                                    children: [
                                      ProfileImages2(
                                          'assets/images/wallimage3.jpeg'),
                                      ProfileImages2(
                                          'assets/images/wallimage4.jpeg'),
                                      ProfileImages2(
                                          'assets/images/wallimage1.jpeg'),
                                    ],
                                  ),
                                  5.verticalSpace,
                                  Text(
                                    'see all ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                          color: AppColors.purpleP500,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            20.verticalSpace,
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -50.h,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Material(
                          elevation: 4,
                          shape: CircleBorder(),
                          child: Container(
                            width: 90.w,
                            height: 90.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors
                                        .transparent, // Set the color to transparent
                                    size: 55.sp,
                                  ),
                                ),
                                Center(
                                  child: ShaderMask(
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: [
                                          Color(0xFFF27121),
                                          Color(0xFFE94057),
                                          Color(0xFF8A2387),
                                        ],
                                        stops: [0.0, 0.5, 1.0],
                                        begin: Alignment.topLeft,
                                        end: Alignment.topRight,
                                        tileMode: TileMode.clamp,
                                      ).createShader(bounds);
                                    },
                                    blendMode: BlendMode.srcIn,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white, // Icon color
                                      size: 55.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -25.h,
                      right: 20.w,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.2), // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset:
                                  Offset(0, 3), // Offset in x and y directions
                            ),
                          ],
                        ),
                        child: Material(
                          elevation: 4,
                          shape: CircleBorder(),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 30.w),
                            width: 55.w,
                            height: 55.h,
                            decoration: BoxDecoration(
                              color: Color(0xffF3F3F3),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.close_rounded,
                              color: AppColors.orange,
                              size: 35.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -30.h,
                      left: 20.w,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.2), // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset:
                                  Offset(0, 3), // Offset in x and y directions
                            ),
                          ],
                        ),
                        child: Material(
                          elevation: 4,
                          shape: CircleBorder(),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Profile_Other_Reportabuse()));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 30.w),
                              width: 55.w,
                              height: 55.h,
                              decoration: BoxDecoration(
                                color: Color(0xffF3F3F3),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.star_border_rounded,
                                color: AppColors.red,
                                size: 35.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ])
            ],
          ),
        ),
      ),
    );
  }

  Container ProfileImages(String img) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 2.w),
      width: 159.w,
      height: 190.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          )),
    );
  }
}

Container ProfileImages2(String img) {
  return Container(
    margin: EdgeInsetsDirectional.symmetric(horizontal: 2.w),
    width: 102.w,
    height: 120.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          img,
          fit: BoxFit.cover,
        )),
  );
}
