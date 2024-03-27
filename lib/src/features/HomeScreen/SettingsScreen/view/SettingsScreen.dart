import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/view/HomeProfileScreen.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/pages/SettingsScreen_body.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/pages/SupportScreen_body.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class SettingScreens extends StatefulWidget {
  const SettingScreens({Key? key}) : super(key: key);

  @override
  State<SettingScreens> createState() => _SettingScreensState();
}

class _SettingScreensState extends State<SettingScreens> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: AppColors.bg.withOpacity(0.6),
            elevation: 8,
            automaticallyImplyLeading: false,
            toolbarHeight: 130.h,
            flexibleSpace: Container(
              width: double.infinity,
              height: 600.h,
              decoration: BoxDecoration(
                  color: AppColors.bg.withOpacity(0.9),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.bgGray.withOpacity(0.3),
                        blurRadius: 2,
                        spreadRadius: 0.2,
                        offset: Offset(4, 1))
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.verticalSpace,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                // padding: const EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: AppColors.bgGray.withOpacity(0.1),
                                      width: 1),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HomeProfileScreen()));
                              },
                              child: Container(
                                width: 50.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/d1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ]),
                      SizedBox(height: 10.h),
                      TabBar(
                        indicatorColor: AppColors.purpleP500,
                        dividerColor: Colors.transparent,
                        labelStyle: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(
                                color: AppColors.purpleP500,
                                fontWeight: FontWeight.w600,
                                fontSize: 29.sp),
                        unselectedLabelStyle: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(
                                color: AppColors.textInactive,
                                fontWeight: FontWeight.w600,
                                fontSize: 29.sp),
                        tabs: [
                          Tab(text: 'Settings'),
                          Tab(text: 'Support'),
                        ],
                      ),

                      // Divider(
                      //   color: Colors.grey,
                      //   endIndent: 10.w,
                      // )
                    ]),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              SettingScreen_body(),
              SupportScreenBody(),
            ],
          ),
        ),
      ),
    );
  }
}
