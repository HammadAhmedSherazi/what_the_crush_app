import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/AdmireScreen/widgets/admireBottom_sheet.dart';


import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class AdmiresBody extends StatefulWidget {
  const AdmiresBody({super.key});

  @override
  State<AdmiresBody> createState() => _AdmiresBodyState();
}

class _AdmiresBodyState extends State<AdmiresBody> {
  List<String> imageTexts = [
    'Emillie',
    'Abigail',
    '76a85267g',
    'Penelope',
    'Chloe',
    'Olivia',
    'James',
    'Fatima'
  ];
  bool isButtonExpanded = false;
  bool isTextShown = false;
  bool isIconTapped = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.verticalSpace,
              Row(
                children: [
                  Text(
                    'your admirers (218)',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    height: 1.h,
                    width: 170.w,
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
                        ? Icon(Icons.arrow_drop_down)
                        : Icon(Icons.arrow_drop_up),
                  )
                ],
              ),
              10.verticalSpace,
              isTextShown ? _buildTextList() : _buildImageList(),
              10.verticalSpace,
              isTextShown
                  ? SizedBox()
                  : Row(
                      children: [
                        Text(
                          '+ 215 more secret admirers',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w400,
                                fontSize: 9.sp,
                              ),
                        ),
                      ],
                    ),
              15.verticalSpace,
              Row(children: [
                Text(
                  'you’re admiring (18)',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  height: 1.h,
                  width: 190.w,
                  color: AppColors.textInactive,
                ),
              ]),
              15.verticalSpace,
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 8,
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
                            width: 59.w,
                            height: 59.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  'assets/images/d1.png',
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: 40.w,
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    width: 20.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      color: AppColors.white,
                                    ),
                                    child: Icon(
                                      index.isEven
                                          ? Icons.arrow_outward
                                          : Icons.arrow_upward,
                                      color: AppColors.purpleP500,
                                      size: 12.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                      ],
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isButtonExpanded = !isButtonExpanded;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: isButtonExpanded ? 170.w : 50.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        gradient: isButtonExpanded
                            ? LinearGradient(
                                begin: Alignment(0.88, 0.47),
                                end: Alignment(-0.88, -0.47),
                                colors: [
                                  Color.fromRGBO(138, 35, 135, 0.1),
                                  Color.fromRGBO(233, 64, 87, 0.1),
                                  Color.fromRGBO(242, 113, 33, 0.1),
                                ],
                              )
                            : null,
                        color: isButtonExpanded ? null : AppColors.mustard,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.add,
                            color: AppColors.purpleP500,
                            size: 25.sp,
                          ),
                          if (isButtonExpanded)
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return admireBottom_Sheet();
                                    },
                                  );
                                },
                                child: Text(
                                  'admire a crush',
                                  style: TextStyle(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              7.verticalSpace,
            ]),
      ),
    ));
  }

  Widget _buildImageList() {
    return Container(
      width: 350.w,
      height: 90.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          bool isDownwardIcon = index == 3;
          return Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                width: 59.w,
                height: 59.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  children: [
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Image.asset(
                        'assets/images/d1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    if (isDownwardIcon)
                      Positioned(
                        left: 40.w,
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 20.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            color: AppColors.white,
                          ),
                          child: Icon(
                            isDownwardIcon
                                ? Icons.arrow_downward
                                : Icons.arrow_upward,
                            color: AppColors.purpleP500,
                            size: 12.sp,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              10.verticalSpace,
              Text(
                '88f80277z',
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

  Widget _buildTextList() {
    return Padding(
      padding: EdgeInsets.only(right: 0.2.sw),
      child: Text(
        'you have 218 admirers anonymously following you ',
        style: TextStyle(
          color: AppColors.blue,
          fontWeight: FontWeight.w700,
          fontSize: 11.sp,
        ),
      ),
    );
  }
}
