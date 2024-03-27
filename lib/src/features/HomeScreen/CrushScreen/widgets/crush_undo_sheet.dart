import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/custom_divider.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/message_boxes.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/message_sheet_header.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/send_sheet.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/unsend_sheet.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/AppGradients.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class crush_undo extends StatefulWidget {
  const crush_undo({super.key});

  @override
  State<crush_undo> createState() => _crush_undoState();
}

class _crush_undoState extends State<crush_undo> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.87, // Set the initial size of the sheet
      minChildSize: 0.75, // Set the minimum size of the sheet
      maxChildSize: 1.0, // Set the maximum size of the sheet
      expand: false, // Set to true for full screen
      builder: (BuildContext context, ScrollController scrollController) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
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
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: SingleChildScrollView(
                                  child: Column(children: [
                                20.verticalSpace,
                                message_header(),
                                Custom_Divider(
                                  txt: '9/1/23',
                                ),
                                5.verticalSpace,
                                Send_Msg_Box(txt: 'you sent a crush',),
                                Receive_Msg_Box(),
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
                                60.verticalSpace,
                                Divider(
                                  indent: 20,
                                  height: 10,
                                ),
                                10.verticalSpace,
                                SecondaryButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        // scrollControlDisabledMaxHeightRatio: 100,
                                        barrierColor: Colors.transparent,
                                        // isScrollControlled: true,
                                        context: context,
                                        builder: (BuildContext context) {
                                          return unsend_sheet();
                                        },
                                      );
                                      // showModalBottomSheet(
                                      //   barrierColor: Colors.transparent,
                                      //   isScrollControlled: true,
                                      //   context: context,
                                      //   builder: (BuildContext context) {
                                      //     return edit_nameBottomSheet();
                                      //   },
                                      // );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50.w),
                                      child: Text(
                                        'send discreet crush message',
                                        style: TextStyle(
                                            color: AppColors.red,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                                10.verticalSpace,
                              ])))))
                ])),
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
                            showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return send_sheet();
                              },
                            );
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
            ));
      },
    );
  }
}
