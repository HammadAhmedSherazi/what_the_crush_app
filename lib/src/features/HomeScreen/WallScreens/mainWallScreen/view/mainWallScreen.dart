import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/WallScreens/mainWallScreen/wallGrid.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/WallScreens/pages/WallPoster2Screens/view/WallPoster2.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/WallAppHeader.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class MainWallScreen extends StatefulWidget {
  const MainWallScreen({Key? key}) : super(key: key);

  @override
  State<MainWallScreen> createState() => _MainWallScreenState();
}

class _MainWallScreenState extends State<MainWallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WallAppHeader(),
          Expanded(
            child: Container(
              height: 500.h,
              width: double.infinity,
              child: SingleChildScrollView(
                  child: Column(children: [
                10.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.textInactive,
                        thickness: 1,
                        endIndent: 10,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Today',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Divider(
                        color: AppColors.textInactive,
                        thickness: 1,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,
                Row(
                  children: [
                    WallGrid(
                      img: 'assets/images/wallimage1.jpeg',
                      txt1: 'Leilani',
                      txt2: '2',
                    ),
                    WallGrid(
                      img: 'assets/images/wallimage2.jpeg',
                      txt1: 'Annabel',
                      txt2: '1',
                    ),
                  ],
                ),
                20.verticalSpace,
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WallPoster2()));
                      },
                      child: Container(
                        margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
                        width: 159.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                'assets/images/wallimage3.jpeg',
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                bottom: 8,
                                left: 8,
                                child: Row(
                                  children: [
                                    Text('Anika',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.copyWith(
                                                color: AppColors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.sp)),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: AppColors.red,
                                          size: 15.sp,
                                        ),
                                        Text('2',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium
                                                ?.copyWith(
                                                    color: AppColors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13.sp)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 3,
                                top: 1,
                                child: Container(
                                  width: 15.w,
                                  height: 14.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      color: AppColors.red),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    WallGrid(
                      img: 'assets/images/wallimage4.jpeg',
                      txt1: 'Hadley',
                      txt2: '0',
                    ),
                  ],
                ),
                15.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.textInactive,
                        thickness: 1,
                        endIndent: 10,
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Yesterday',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Divider(
                        color: AppColors.textInactive,
                        thickness: 1,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,
                Row(
                  children: [YesterdayContainer(), YesterdayContainer()],
                ),
                20.verticalSpace,
              ])),
            ),
          ),
        ],
      ),
    );
  }
}

class YesterdayContainer extends StatelessWidget {
  const YesterdayContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
      width: 159.w,
      height: 200.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/wallposter.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 15,
              top: 134.h,
              child: Text('Kyle, 24',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp)),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Row(
                children: [
                  Container(
                      width: 159.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          // color: Colors.black.withOpacity(0.3),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              // Color(0xff9f9981),
                              Color(0xff655f4e).withOpacity(0.7),
                              Colors.black.withOpacity(0.5)
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CupertinoIcons.clear_thick,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                            width: 20.w,
                            indent: 1.h,
                            endIndent: 2.h,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
