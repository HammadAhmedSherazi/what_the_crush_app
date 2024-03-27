import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/ProfileHeaderButtons.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class Profile_Other2 extends StatefulWidget {
  const Profile_Other2({Key? key}) : super(key: key);

  @override
  State<Profile_Other2> createState() => _Profile_Other2State();
}

class _Profile_Other2State extends State<Profile_Other2> {
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
                  height: 0.5.sh,
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
                        padding: EdgeInsets.symmetric(horizontal: 13.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            40.verticalSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Emelie & you',
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: AppColors.purpleP500,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24.sp,
                                      ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: AppColors.mustard,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(27),
                                        topRight: Radius.circular(27),
                                        bottomLeft: Radius.circular(14),
                                        bottomRight: Radius.circular(27),
                                      ),
                                      border: Border.all(
                                          color: AppColors.white, width: 1),
                                    ),
                                    width: 52.w,
                                    height: 52.h,
                                    child: Icon(
                                      Icons.close,
                                      size: 30.sp,
                                      color: AppColors.purpleP500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(children: [
                              Text('compatibility score',
                                  style:
                                      TextStyle(color: AppColors.textPrimary)),
                              Text('   98%',
                                  style:
                                      TextStyle(color: AppColors.purpleP500)),
                            ]),
                            25.verticalSpace,
                            Rowtext(
                              txt1: 'crush sent',
                              txt2: '9/12/23',
                            ),
                            Rowtext(
                              txt1: 'anonymously admire',
                              txt2: '9/12/23',
                            ),
                            Rowtext(
                              txt1: 'poster admirations',
                              txt2: '76',
                            ),
                            Rowtext(
                              txt1: 'matched',
                              txt2: 'not yet',
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
                            width: 90.w,
                            height: 90.h,
                            decoration: BoxDecoration(
                              color: Color(0xffF3F3F3),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.email_outlined,
                              color: AppColors.purpleP500,
                              size: 50.sp,
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

class Rowtext extends StatelessWidget {
  final String txt1;
  final String txt2;

  const Rowtext({
    Key? key,
    required this.txt1,
    required this.txt2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        children: [
          Text(txt1,
              style: TextStyle(
                  color: AppColors.purpleP500, fontWeight: FontWeight.w600)),
          10.horizontalSpace,
          Text(txt2,
              style: TextStyle(
                  color: AppColors.textPrimary, fontWeight: FontWeight.w400)),
        ],
      ),
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
