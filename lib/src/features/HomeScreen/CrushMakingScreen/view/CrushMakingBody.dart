import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CrushMakingScreen/view/CrushMakingScreen2.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushMakingScreen/widgets/crush_makingsubscription.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/Divider_text_icon.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CrushMakingBody extends StatefulWidget {
  const CrushMakingBody({super.key});

  @override
  State<CrushMakingBody> createState() => _CrushMakingBodyState();
}

class _CrushMakingBodyState extends State<CrushMakingBody> {
  List<String> imageTexts = [
    'Emillie',
    'Abigail',
    'Puja',
    'Penelope',
    'Chloe',
    'Olivia',
    'James',
    'Fatima'
        'Emillie',
    'Abigail',
    'Puja',
    'Penelope',
    'Chloe',
    'Olivia',
    // 'James',
    // 'Fatima'
  ];

  bool isButtonExpanded = false;
  bool isTextShown = false;
  bool isIconTapped = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.verticalSpace,
              Row(
                children: [
                  Text(
                    'suggestions',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.w),
                    height: 1.h,
                    width: 185.w,
                    color: AppColors.textInactive,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isIconTapped = !isIconTapped;
                        isTextShown = !isTextShown;
                      });
                    },
                    child: isIconTapped
                        ? Icon(
                            Icons.arrow_drop_up,
                            color: AppColors.textInactive,
                          )
                        : Icon(
                            Icons.arrow_drop_down,
                            color: AppColors.textInactive,
                          ),
                  )
                ],
              ),
              10.verticalSpace,
              isTextShown ? _buildSuggestionList() : _buildImageList(),
              15.verticalSpace,
              isTextShown
                  ? SizedBox(
                      height: 40.h,
                      child: Row(
                        children: [
                          Text(
                            '+ 205 more suggestions',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: AppColors.blue,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.sp,
                                ),
                          ),
                        ],
                      ),
                    )
                  : Row(
                      children: [
                        Text(
                          '+ 205 more suggestions',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.blue,
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                              ),
                        ),
                      ],
                    ),
              2.verticalSpace,
              isTextShown
                  ? SizedBox(
                      height: 20.h,
                      child: DividerWithTextIcon(
                        txt: 'crush making',
                      ),
                    )
                  : DividerWithTextIcon(txt: 'crush making'),
              15.verticalSpace,
              isTextShown
                  // ? SizedBox()
                  ? crush_makingsubscription()
                  : Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: imageTexts.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // showModalBottomSheet(
                                  //   barrierColor: Colors.transparent,
                                  //   isScrollControlled: true,
                                  //   context: context,
                                  //   builder: (BuildContext context) {
                                  //     return crush_message_Screen();
                                  //   },
                                  // );
                                },
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CrushMakingScreen2()));
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
                                      )),
                                ),
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                imageTexts[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.textPrimary,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 9.sp,
                                    ),
                              ),
                              Text(
                                '01/01/23',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.textInactive,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 9.sp,
                                    ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
              7.verticalSpace,
            ]),
      ),
    );
  }

  Widget _buildImageList() {
    return Container(
      width: 360.w,
      height: 90.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                width: 59.w,
                height: 59.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/d1.png',
                  fit: BoxFit.cover,
                ),
              ),
              5.verticalSpace,
              Text(
                imageTexts[index],
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w400,
                      fontSize: 9.sp,
                    ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSuggestionList() {
    return Container(
      height: 160.h,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 0,
          mainAxisSpacing: 10,
        ),
        itemCount: imageTexts.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  // showModalBottomSheet(
                  //   barrierColor: Colors.transparent,
                  //   isScrollControlled: true,
                  //   context: context,
                  //   builder: (BuildContext context) {
                  //     return crush_message_Screen();
                  //   },
                  // );
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
                    )),
              ),
              SizedBox(height: 1.h),
              Text(
                imageTexts[index],
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w400,
                      fontSize: 9.sp,
                    ),
              ),
            ],
          );
        },
      ),
    );
  }
}

