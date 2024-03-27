import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/widgets/subscription_textcontent.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/widgets/gradeint_divider.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class subscription_bottomsheet extends StatefulWidget {
  const subscription_bottomsheet({super.key});

  @override
  State<subscription_bottomsheet> createState() =>
      _subscription_bottomsheetState();
}

class _subscription_bottomsheetState extends State<subscription_bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.75, // Set the initial size of the sheet
      minChildSize: 0.50, // Set the minimum size of the sheet
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
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            10.verticalSpace,
                            Row(
                              children: [
                                Gradient_Divider(),
                                15.horizontalSpace,
                                CustomMainGradientText(
                                  text: 'credits\ncompare',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                15.horizontalSpace,
                                Gradient_Divider(),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'free',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: AppColors.purpleP500,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                                // Spacer(),
                                SizedBox(width: 0.5.sw),

                                Text(
                                  'subscription',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: Color(0xffF27121),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ],
                            ),
                            10.verticalSpace,
                            Center(
                              child: RowText(
                                  text1: '       3\n(at sign up',
                                  text2: 'credits',
                                  text3: '10 credits\nfor \$29.99 '),
                            ),
                            10.verticalSpace,
                            Center(
                              child: Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      width: 14.w,
                                      height: 14.w,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.purpleP500),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 10.sp,
                                      )),
                                  Spacer(),
                                  28.horizontalSpace,
                                  // SizedBox(width: 0.2.sw),
                                  Text(
                                    '     top up',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          color: AppColors.textPrimary,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '       5 credits for \$4.99\n     20 credits for \$9.99 ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          color: AppColors.textPrimary,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            10.verticalSpace,
                            RowText(
                                text1: ' 7 days',
                                text2: 'validity',
                                text3: '       365 days \ntop ups neverexpire'),
                            10.verticalSpace,
                            RowText(
                                text1: '  1 per day\n(after sign up)',
                                text2: 'send crushes',
                                text3: '   5 per day'),
                            15.verticalSpace,
                            RowIcon(text1: 'earn free crushes'),
                            15.verticalSpace,
                            RowIcon(text1: 'gangs/groups'),
                            15.verticalSpace,
                            RowIcon(text1: 'view non-contacts'),
                            15.verticalSpace,
                            RowIcon(text1: 'search non-contacts'),
                            15.verticalSpace,
                            RowIcon(text1: 'match making'),
                            15.verticalSpace,
                            RowIcon(text1: 'privacy'),
                            15.verticalSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'show all benefits',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: AppColors.blue,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                                15.horizontalSpace,
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.symmetric(vertical: 10.h),
                                    width: 90.w,
                                    height: 33.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: AppColors.purpleP500,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'subscribe',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                color: AppColors.purpleP500,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 20.h),
                              child: SecondaryButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 64.w),
                                    child: Text(
                                      'show me more ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              color: AppColors.red,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16.sp),
                                    ),
                                  )),
                            )
                          ]),
                    ),
                  ))
                ])));
      },
    );
  }
}


// class RowListView extends StatelessWidget {
//   const RowListView({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List<String> texts = [
//       'earn free crushes',
//       'gangs/groups',
//       'view non-contacts',
//       'search non-contacts',
//       'match making',
//       'privacy',
//     ];
//     return Container(
//       height: 200.h,
//       child: ListView.builder(
//         itemCount: texts.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15.w),
//             child: RowIcon(text1: texts[index]),
//           );
//         },
//       ),
//     );
//   }
// }
