import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/view/CreditScreen.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/view/CrushScreenHeader.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/NotificationScreen/view/notification.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/view/SettingsScreen.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/WallScreens/pages/WallPoster1Screens/view/WallPoster.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/FilterButtons.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/bottomNavBar.dart';
import 'package:what_the_crush_app/src/features/Providers/navbar_provider.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';

class WallAppHeader extends StatefulWidget {
  const WallAppHeader({
    // required this.customPageActions,
    super.key,
  });

  @override
  State<WallAppHeader> createState() => _WallAppHeaderState();
}

class _WallAppHeaderState extends State<WallAppHeader> {
  final searchController = TextEditingController();

  // final Widget customPageActions;
  @override
  Widget build(BuildContext context) {
    print('rebuilding Custom App Header');
    return Material(
      elevation: 1,
      color: AppColors.bg,
      child: SafeArea(
        minimum: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingScreens()));

                  },
                  icon: Icon(Icons.sort)),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>CreditScreen()));

                  },
                  child: Column(
                    children: [
                      Row(
                        key: const ValueKey('appHeaderRow'),
                        children: [
                          CustomMainGradientText(
                            text: '2 free creds',
                            style:
                                Theme.of(context).textTheme.labelMedium?.copyWith(
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
                            builder: (context) => NotificationScreen()));
                  },
                  icon: Image.asset(
                    'assets/images/bell_light_notification.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
            // 5.verticalSpace,
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => CrushScreen()));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CrushScreen()));
                    final bottomProvider =
                        Provider.of<BottomProviderController>(context,
                            listen: false);
                    bottomProvider.navBarChange(1);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBar()));
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => WallScreen()));
                  },
                  child: Text(
                    'wall',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(color: AppColors.purpleP500),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WallPoster()));
                  },
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                      side: BorderSide(
                        color: AppColors.border,
                        width: 2,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: AppColors.purpleP500,
                  ),
                ),
              ],
            ),
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

            // if (filterButtons != null) ...[
            Container(
                constraints: const BoxConstraints(
                  maxHeight: 41,
                ),
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomQuickFilterButton(
                        text: 'my contacts',
                      ),
                      // 10.horizontalSpace,
                      const CustomQuickFilterButton(
                        text: 'top posters',
                      ),
                      // 10.horizontalSpace,
                      const CustomQuickFilterButton(
                        text: 'friends of friends',
                      ),
                    ],
                  ))
                ])),
          ],
        ),
      ),
    );
  }
}
