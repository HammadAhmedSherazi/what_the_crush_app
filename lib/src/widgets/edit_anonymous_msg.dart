import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/verify_phone_number/view/verify_number.dart';

import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/widgets/AvatarWithGradientCircle.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';

class EditAnonymousMsg extends StatefulWidget {
  const EditAnonymousMsg({super.key});

  @override
  State<EditAnonymousMsg> createState() => _EditAnonymousMsgState();
}

class _EditAnonymousMsgState extends State<EditAnonymousMsg> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85, // Set the initial size of the sheet
      minChildSize: 0.70, // Set the minimum size of the sheet
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
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            20.verticalSpace,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomMainGradientText(
                                  text: 'edit your message',
                                ),
                                AvatarWithGradientCircle(),
                                Text(
                                  'Penelope',
                                  style: TextStyle(
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp,
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                            20.verticalSpace,
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    textAlign: TextAlign.center,
                                    'sending to +1 (262) 287-6000',
                                    style: TextStyle(
                                      color: AppColors.textPrimary,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.sp,
                                    ),
                                    overflow: TextOverflow.clip,
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                            10.verticalSpace,
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              width: 255.w,
                              height: 330.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xfffdf2f3),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  10.verticalSpace,
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: AppColors.blue, width: 2)),
                                    ),
                                    child: Text(
                                      'Penelope  \t       ',
                                      style: TextStyle(
                                        letterSpacing: 1,
                                        color: AppColors.blue,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 24.sp,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'your',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              letterSpacing: 1,
                                              color: AppColors.textPrimary,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 23.sp,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 10, right: 10),
                                          child: DropdownButton<String>(
                                            underline: Container(
                                              height: 2,
                                              color: AppColors.blue,
                                            ),
                                            menuMaxHeight: 200,
                                            elevation: 2,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                            style: TextStyle(
                                              color: AppColors.blue,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 23.sp,
                                            ),
                                            hint: Text(
                                              'friends',
                                              style: TextStyle(
                                                color: AppColors.blue,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 24.sp,
                                              ),
                                            ),
                                            value: selectedValue,
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                selectedValue = newValue;
                                              });
                                            },
                                            items: <String>[
                                              'friend',
                                              'college',
                                              'acquaintance',
                                              'classmate'
                                            ].map((String value) {
                                              return DropdownMenuItem<String>(
                                                alignment: Alignment.center,
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                    color: AppColors.blue,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 24.sp,
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "sent you a discreet crush message!\nWant to know who it is!? Download the\napp or visit",
                                    style: TextStyle(
                                      letterSpacing: 1,
                                      color: AppColors.textPrimary,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 24.sp,
                                    ),
                                  ),
                                  Text(
                                    'WadaCrush.com',
                                    style: TextStyle(
                                      letterSpacing: 1,
                                      color: AppColors.textPrimary,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 24.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            20.verticalSpace,
                            PrimaryButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            VerifyPhoneNumber()));
                              },
                              text: '   send anonymous crush message',
                            ),
                            10.verticalSpace,
                          ],
                        ),
                      ),
                    ),
                  ))
                ])));
      },
    );
  }
}

class SheetHeading extends StatelessWidget {
  final String txt;
  SheetHeading({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        color: AppColors.purpleP500,
        fontWeight: FontWeight.w700,
        fontSize: 24.sp,
      ),
      overflow: TextOverflow.clip,
      maxLines: 1,
    );
  }
}
