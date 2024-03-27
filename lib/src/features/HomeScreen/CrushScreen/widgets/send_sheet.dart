import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/custom_divider.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/message_boxes.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/message_sheet_header.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/unsend_sheet.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class send_sheet extends StatefulWidget {
  const send_sheet({super.key});

  @override
  State<send_sheet> createState() => _send_sheetState();
}

class _send_sheetState extends State<send_sheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85, // Set the initial size of the sheet
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
                              Send_Msg_Box(
                                txt: 'you sent a crush',
                              ),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 50.w),
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
        );
      },
    );
  }
}
