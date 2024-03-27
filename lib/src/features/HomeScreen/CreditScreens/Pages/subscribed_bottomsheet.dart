import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/view/CreditScreen2.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/widgets/subsrcibe_content_sheet.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class subscribed_BottomSheet2 extends StatefulWidget {
  const subscribed_BottomSheet2({super.key});

  @override
  State<subscribed_BottomSheet2> createState() =>
      _subscribed_BottomSheet2State();
}

class _subscribed_BottomSheet2State extends State<subscribed_BottomSheet2> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.50, // Set the initial size of the sheet
      minChildSize: 0.30, // Set the minimum size of the sheet
      maxChildSize: 1.0, // Set the maximum size of the sheet
      expand: false, // Set to true for full screen
      builder: (BuildContext context, ScrollController scrollController) {
        return Scaffold(
            body: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(0.15.sw)),
                  color: AppColors.white,
                ),
                child: Column(children: [
                  // Draggablehandle bar
                  SheetIndicator(),
                  Expanded(
                      child: SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Text(
                              'successfully subscribed ',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                      color: AppColors.red,
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w700),
                            ),
                          ),
                          15.verticalSpace,
                          subscribed_content_sheet(
                            txt1: 'send',
                            txt2: ' 5 crushes',
                            txt3: ' per day',
                            fontWeight1: FontWeight.normal,
                            fontWeight2: FontWeight.bold,
                            fontWeight3: FontWeight.normal,
                          ),
                          subscribed_content_sheet(
                            txt1: '365 days ',
                            txt2: 'to use up',
                            txt3: '10 premium credits',
                            fontWeight1: FontWeight.bold,
                            fontWeight2: FontWeight.normal,
                            fontWeight3: FontWeight.normal,
                          ),
                          subscribed_content_sheet(
                            txt1: 'top up',
                            txt2: ' credits',
                            txt3: ' never expire',
                            fontWeight1: FontWeight.normal,
                            fontWeight2: FontWeight.bold,
                            fontWeight3: FontWeight.normal,
                          ),
                          subscribed_content_sheet(
                            txt1: 'sent messages ',
                            txt2: ' never ',
                            txt3: ' expire',
                            fontWeight1: FontWeight.normal,
                            fontWeight2: FontWeight.bold,
                            fontWeight3: FontWeight.bold,
                          ),
                          subscribed_content_sheet(
                            txt1: 'a',
                            txt2: ' curated match suggestion',
                            txt3: ' per week',
                            fontWeight1: FontWeight.normal,
                            fontWeight2: FontWeight.bold,
                            fontWeight3: FontWeight.normal,
                          ),
                          20.verticalSpace,
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(
                              children: [
                                Text(
                                  'remember! your identity is always',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge
                                      ?.copyWith(
                                          color: AppColors.orange,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400),
                                ),
                                CustomMainGradientText(
                                  text: ' anonymous',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CreditScreen2()));
                            },
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: 30.h,
                                ),
                                width: 140.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppColors.red,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'tell me more',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: AppColors.red,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14.sp),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
                ])));
      },
    );
  }
}
