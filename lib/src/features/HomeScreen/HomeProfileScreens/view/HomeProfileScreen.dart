import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/HomeProfileHeaderContainer.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/ProfileHeaderButtons.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/TextWithEditedButton.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/profile_CustomCard.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class HomeProfileScreen extends StatefulWidget {
  const HomeProfileScreen({Key? key}) : super(key: key);

  @override
  State<HomeProfileScreen> createState() => _HomeProfileScreenState();
}

class _HomeProfileScreenState extends State<HomeProfileScreen> {
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
                    children: [
                      HomeProfileHeaderContainer(),
                      Text_With_Edit_Button(),
                      5.verticalSpace,
                      Row(
                        children: [
                          RowIconWithText(
                            icon: Icons.lightbulb_circle_outlined,
                            txt: 'neuroticism',
                          ),
                          15.horizontalSpace,
                          RowIconWithText(
                            icon: Icons.lightbulb_circle_outlined,
                            txt: 'gemini, cancer',
                          )
                        ],
                      ),
                      5.verticalSpace,
                      Row(
                        children: [
                          RowIconWithText(
                            icon: Icons.favorite_outline,
                            txt: 'crushes 71',
                          ),
                          15.horizontalSpace,
                          RowIconWithText(
                            icon: Icons.circle_outlined,
                            txt: 'admirers 125',
                          ),
                          15.horizontalSpace,
                          RowIconWithText(
                            icon: Icons.star_border,
                            txt: 'stars 956',
                          )
                        ],
                      ),
                      10.verticalSpace,
                      ProfileCustomCard(
                        txt1: 'attracted to',
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
                      Row(
                        children: [
                          Text(
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
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15.w),
                            height: 1.h,
                            width: 157.w,
                            color: AppColors.textInactive,
                          ),
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
                      10.verticalSpace,
                      Row(
                        children: [
                          ProfileImages('assets/images/wallimage1.jpeg'),
                          ProfileImages('assets/images/wallimage2.jpeg'),
                        ],
                      ),
                      5.verticalSpace,
                      Row(
                        children: [
                          ProfileImages2('assets/images/wallimage3.jpeg'),
                          ProfileImages2('assets/images/wallimage4.jpeg'),
                          ProfileImages2('assets/images/wallimage1.jpeg'),
                        ],
                      ),
                      20.verticalSpace,
                    ],
                  ),
                ),
              )
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
