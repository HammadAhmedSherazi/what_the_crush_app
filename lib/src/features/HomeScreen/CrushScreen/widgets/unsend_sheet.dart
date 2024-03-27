import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/CrushScreen/widgets/send_sheet.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class unsend_sheet extends StatefulWidget {
  const unsend_sheet({super.key});

  @override
  State<unsend_sheet> createState() => _unsend_sheetState();
}

class _unsend_sheetState extends State<unsend_sheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.42, // Set the initial size of the sheet
      minChildSize: 0.20, // Set the minimum size of the sheet
      maxChildSize: 1.0, // Set the maximum size of the sheet
      expand: false, // Set to true for full screen
      builder: (BuildContext context, ScrollController scrollController) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: 375.w,
                height: 155.h,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(0.15.sw)),
                  color: AppColors.white,
                ),
                child: Column(children: [
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      40.horizontalSpace,
                      Text(
                        'are you sure?',
                        style: TextStyle(
                            color: AppColors.purpleP500,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      20.horizontalSpace,
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.close,
                          color: AppColors.purpleP500,
                        ),
                      )
                    ],
                  ),
                  10.verticalSpace,
                  Text(
                    "unsending your crush message will unmatch you both\n     and decreases your chances of matching again!",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  10.verticalSpace,
                  SecondaryButton(
                      onPressed: () {
                        showModalBottomSheet(
                          barrierColor: Colors.transparent,
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return send_sheet();
                          },
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          'unsend',
                          style: TextStyle(
                              color: AppColors.red,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                  5.verticalSpace,
                ])));
      },
    );
  }
}
