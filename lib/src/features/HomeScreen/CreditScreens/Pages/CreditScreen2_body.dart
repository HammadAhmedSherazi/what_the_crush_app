import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/Pages/create_gang_bottomsheet.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/widgets/Container_rowcontents.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/widgets/subscription_bottomsheet.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/widgets/gradeint_divider.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';

class CreditScreen2_body extends StatefulWidget {
  const CreditScreen2_body({super.key});

  @override
  State<CreditScreen2_body> createState() => _CreditScreen2_bodyState();
}

class _CreditScreen2_bodyState extends State<CreditScreen2_body> {
  final NewPassword = TextEditingController();
  final ResetPassword = TextEditingController();
  List<String> texts = [
    'how to earn free credits ',
    "why can’t I top up",
    'what is the validity of my credits',
    'can I transfer my balance credits',
    'can I transfer my balance credits',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            15.verticalSpace,
            CreditsContainer1(
              txt: 'free plan',
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
              width: 334.w,
              height: 65.h,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(10)),
                  border:
                      Border.all(color: AppColors.purpleP500.withOpacity(0.2))),
              child: Container_rowcontent(
                  onPressed: () {
                    showModalBottomSheet(
                        barrierColor: Colors.black.withOpacity(0.5),
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return Creategang_bottomsheet();
                        });
                  },
                  text4: 'earn free creds',
                  text3: '2',
                  textColor: AppColors.purpleP500,
                  text1: 'free creds',
                  text2: 'expires01/13/23'),
            ),
            20.verticalSpace,
            CreditsContainer1(
              txt: 'annual plan',
              textColor: Color(0xffF27121),
              showIcon: false,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
              width: 334.w,
              height: 135.h,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(10)),
                  border:
                      Border.all(color: AppColors.purpleP500.withOpacity(0.2))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'premium creds',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Color(0xffF27121),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.sp),
                          ),
                          Text(
                            'expires365 days',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.sp),
                          ),
                        ],
                      ),
                      Text(
                        '10',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Color(0xffF27121),
                            fontWeight: FontWeight.w800,
                            fontSize: 20.sp),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              barrierColor: Colors.black.withOpacity(0.5),
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return subscription_bottomsheet();
                              });
                        },
                        child: Container(
                          // margin: EdgeInsets.symmetric(vertical: 10.h),
                          width: 90.w,
                          height: 33.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.red,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'subscribed',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Color(0xffF27121),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  CounterRow(),
                ],
              ),
            ),
            19.verticalSpace,
            Row(
              children: [
                Gradient_Divider(),
                10.horizontalSpace,
                CustomMainGradientText(
                  text: 'suggestions',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                10.horizontalSpace,
                Gradient_Divider(),
              ],
            ),
            10.verticalSpace,
            ListView_Container(texts: texts),
            10.verticalSpace,
          ]),
        ),
      ),
    );
  }
}

class ListView_Container extends StatelessWidget {
  const ListView_Container({
    super.key,
    required this.texts,
  });

  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: 206.w,
      child: ListView.builder(
        itemCount: texts.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            margin: EdgeInsets.symmetric(vertical: 3.h),
            width: 180.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.white,
              border: Border.all(
                color: AppColors.border,
              ),
            ),
            child: Text(
              texts[index], // Change text here
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textInactive,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp),
            ),
          );
        },
      ),
    );
  }
}
