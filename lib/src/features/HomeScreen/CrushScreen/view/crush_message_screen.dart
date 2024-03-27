import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/custom_divider.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/message_boxes.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/message_sheet_header.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class crush_message_Screen extends StatefulWidget {
  const crush_message_Screen({super.key});

  @override
  State<crush_message_Screen> createState() => _crush_message_ScreenState();
}

class _crush_message_ScreenState extends State<crush_message_Screen> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85, // Set the initial size of the sheet
      minChildSize: 0.75, // Set the minimum size of the sheet
      maxChildSize: 1.0, // Set the maximum size of the sheet
      expand: false, // Set to true for full screen
      builder: (BuildContext context, ScrollController scrollController) {
        return Scaffold(
            // resizeToAvoidBottomInset: false,
            body: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(0.15.sw)),
                  color: AppColors.white,
                ),
                child: Column(children: [
                  SheetIndicator(),
                  Expanded(
                      child: SingleChildScrollView(
                          controller: scrollController,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: SingleChildScrollView(
                                child: Column(children: [
                              10.verticalSpace,
                              message_header(),
                              // 20.verticalSpace,
                              Custom_Divider(
                                txt: '9/1/23',
                              ),
                              10.verticalSpace,
                              Send_Msg_Box(
                                txt: 'you sent a crush',
                              ),
                              10.verticalSpace,
                              Custom_Divider(
                                txt: 'Today',
                              ),
                              10.verticalSpace,
                              Send_Msg_Box(
                                txt: 'you both are matched!',
                              ),

                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: DateWithIcon(
                                  txt: "'2:54 PM'",
                                ),
                              ),
                              10.verticalSpace,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.w,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 10.w,
                                    ),
                                    width: 250.w,
                                    height: 95.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                        ),
                                        color: AppColors.red.withOpacity(0.1)),
                                    child: Center(
                                      child: Text(
                                        "Haha truly! Nice to meet you\nGrace! What about a cup of coffee\ntoday evening? ☕️ ",
                                        style: TextStyle(
                                            color: AppColors.textPrimary,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 5),
                                child: Row(
                                  children: [
                                    DateWithIcon(
                                      txt: "2:55 PM",
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.w,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20.w,
                                    ),
                                    width: 250.w,
                                    height: 95.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          bottomLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                        ),
                                        color:
                                            AppColors.bgGray.withOpacity(0.1)),
                                    child: Center(
                                      child: Text(
                                        "Haha truly! Nice to meet you\nGrace! What about a cup of coffee\ntoday evening? ☕️ ",
                                        style: TextStyle(
                                            color: AppColors.textPrimary,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: DateWithIcon(
                                  txt: "2:54 PM",
                                ),
                              ),

                              Custom_Divider(txt: 'Today'),
                              15.verticalSpace,
                              Container(
                                width: 190.w,
                                height: 39.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: AppColors.blue.withOpacity(0.1)),
                                child: Center(
                                  child: Text(
                                    'you unsent a crush message',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 70.w, vertical: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '2:54 PM',
                                      style: TextStyle(
                                          color: AppColors.textPrimary,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Send_Msg_Box(
                                txt: 'you sent a crush',
                              ),
                              Receive_Msg_Box(),
                            ])),
                          ))),
                  Divider(
                    indent: 20,
                    height: 10,
                  ),
                  10.verticalSpace,
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    width: 335.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Your Message',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: AppColors.textInactive,
                                        fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Image.asset('assets/images/crush_making_default.png'),
                        ],
                      ),
                    ),
                  ),
                  10.verticalSpace,
                ])));
      },
    );
  }
}

class DateWithIcon extends StatelessWidget {
  final String txt;
  const DateWithIcon({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          txt,
          style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400),
        ),
        Icon(
          Icons.done_all,
          size: 15.sp,
          color: AppColors.red,
        )
      ],
    );
  }
}
