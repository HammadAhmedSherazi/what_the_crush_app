import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/bottomNavBar.dart';
import 'package:what_the_crush_app/src/features/Providers/navbar_provider.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/AppGradients.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class poster2BottomUndo extends StatefulWidget {
  const poster2BottomUndo({super.key});

  @override
  State<poster2BottomUndo> createState() => _poster2BottomUndoState();
}

class _poster2BottomUndoState extends State<poster2BottomUndo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.bg,
            body: Container(
              decoration: BoxDecoration(
                color: Colors.black
                    .withOpacity(0.5), // Background color with opacity
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
                      17.horizontalSpace,
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
                          final bottomProvider =
                              Provider.of<BottomProviderController>(context,
                                  listen: false);
                          bottomProvider.navBarChange(0);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavBar()));
                        },
                        child: Container(
                          // padding: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border:
                                Border.all(color: AppColors.white, width: 1),
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
                  27.verticalSpace,
                  Text(
                    'love yourself before loving others',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.w400),
                  ),
                ]),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              height: 90.h,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.light_max,
                                  color: Colors.red,
                                ),
                                10.horizontalSpace,
                                Text(
                                  'Inappropriate content?',
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: AppColors.red,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "show zero tolerance to profanity,\ninappropriate and illicit content",
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  ),
                            ),
                          ],
                        ),
                        // SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: () {
                            final bottomProvider =
                                Provider.of<BottomProviderController>(context,
                                    listen: false);
                            bottomProvider.navBarChange(0);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBar()));
                          },
                          child: Container(
                            width: 100.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: AppGradients.secondaryButtonGradient,
                            ),
                            child: Center(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'undo',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                            color: AppColors.red,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.sp,
                                          ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
