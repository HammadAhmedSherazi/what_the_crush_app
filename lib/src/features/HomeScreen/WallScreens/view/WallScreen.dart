import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/WallScreens/pages/WallScreen1/view/WallScreen1.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/WallAppHeader.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/bottomNavBar.dart';
import 'package:what_the_crush_app/src/features/Providers/navbar_provider.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class WallScreen extends StatelessWidget {
  const WallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          WallAppHeader(),
          20.verticalSpace,
          Text(
            'admire (follow) all your contacts?',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.purpleP500,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
          ),
          5.verticalSpace,
          Text(
            'you’ll can view and like their content discreetly',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.textInactive,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500),
          ),
          10.verticalSpace,
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                final bottomProvider = Provider.of<BottomProviderController>(
                    context,
                    listen: false);
                bottomProvider.navBarChange(0);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()));
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WallScreen1()));
              },
              child: Container(
                height: 35,
                width: 134,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topRight: Radius.circular(5)),
                  color: AppColors.mustard,
                ),
                child: Center(
                  child: Text('yes please',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: AppColors.purpleP500,
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 35,
                width: 134,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: AppColors.mustard,
                ),
                child: Center(
                  child: Text("I’ll decide later",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: AppColors.purpleP500,
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp)),
                ),
              ),
            ),
          ]),
          39.verticalSpace,
          Container(
            height: 98,
            width: 258,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff21B3F2).withOpacity(0.2),
                border: Border.all(
                    color: Color(0xff21B3F2).withOpacity(0.9), width: 1)),
            child: Center(
              child: Column(
                children: [
                  12.verticalSpace,
                  Text("no activity here",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp)),
                  5.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "admire (follow) your crushes secretly here\n      to view their daily posts on Wall",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp)),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
