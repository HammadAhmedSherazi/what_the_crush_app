import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/AdmireScreen/view/Admiresbody.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/view/CreditScreen.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/view/CrushBody.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/NotificationScreen/view/notification.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/view/SettingsScreen.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/FilterButtons.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';

class CrushScreen extends StatefulWidget {
  const CrushScreen({Key? key}) : super(key: key);

  @override
  State<CrushScreen> createState() => _CrushScreenState();
}

class _CrushScreenState extends State<CrushScreen> {
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
            toolbarHeight: 210.h,
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
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingScreens()));
                            },
                            icon: Icon(Icons.sort)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreditScreen()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                key: const ValueKey('appHeaderRow'),
                                children: [
                                  CustomMainGradientText(
                                    text: '2 free creds',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  10.horizontalSpace,
                                  Transform.rotate(
                                    angle: -45,
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.expand_less,
                                          color: AppColors.textPrimary,
                                          size: 14,
                                        ),
                                        Icon(
                                          Icons.expand_more,
                                          color: AppColors.textPrimary,
                                          size: 14,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'expires in 3 days',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NotificationScreen()));
                          },
                          icon: Image.asset(
                            'assets/images/bell_light_notification-removebg-preview.png',
                            width: 25.w,
                            height: 25.h,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
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
                        Tab(text: 'Crushes'),
                        Tab(text: 'Admires'),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: 334.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: AppColors.border),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: Theme.of(context).textTheme.bodyMedium,
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                              size: 20,
                              color: AppColors.bgGray,
                            )),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                        constraints: BoxConstraints(
                          maxHeight: 41.h,
                        ),
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomQuickFilterButton(
                                      iconData: Icons.favorite,
                                      text: 'match (1)',
                                    ),
                                    // 10.horizontalSpace,
                                    const CustomQuickFilterButton(
                                      iconData: Icons.arrow_downward_outlined,
                                      text: 'received (2)',
                                    ),
                                    // 10.horizontalSpace,
                                    const CustomQuickFilterButton(
                                      iconData: Icons.arrow_outward_outlined,
                                      text: 'sent (1)',
                                    ),
                                  ],
                                ),
                              )
                            ]))

                    // Divider(
                    //   color: Colors.grey,
                    //   endIndent: 10.w,
                    // )
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              CrushBody(),
              AdmiresBody(),
            ],
          ),
        ),
      ),
    );
  }
}
