// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/widgets/block_contacts_BottomSheet.dart';

import 'package:what_the_crush_app/src/features/WelcomeScreens/setup_privacyScreens/privacy_family/view/privacy_family.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/Input_Textfield/Input_Textfield.dart';

class SettingScreen_body extends StatefulWidget {
  const SettingScreen_body({super.key});

  @override
  State<SettingScreen_body> createState() => _SettingScreen_bodyState();
}

class _SettingScreen_bodyState extends State<SettingScreen_body> {
  final NewPassword = TextEditingController();
  final ResetPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            15.verticalSpace,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'family/blocked contacts (2)',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  height: 1.h,
                  width: 120.w,
                  color: AppColors.textInactive,
                ),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: AppColors.textInactive,
                )
              ],
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 65.w,
                          height: 65.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.bgGray),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            color: AppColors.purpleP500,
                            size: 50.sp,
                          ),
                        ),
                        2.verticalSpace,
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                barrierColor: Colors.black.withOpacity(0.5),
                                isScrollControlled: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return BlockContacts_sheet();
                                });
                          },
                          child: Text(
                            "  block\ncontacts",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: AppColors.purpleP500,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.sp,
                                ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 0.07.sw),
                    AvatarWithIcon(
                      txt: " Chloe\nGarcia",
                    ),
                    SizedBox(width: 0.07.sw),
                    AvatarWithIcon(
                      txt: "  Rose\nRuthford",
                    ),
                    SizedBox(width: 0.07.sw),
                    Text(
                      'show all',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: AppColors.blueP100,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.sp,
                          ),
                    ),
                  ]),
            ),
            10.verticalSpace,
            Text(
              'Reset password',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppColors.red,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
            ),
            20.verticalSpace,
            InputTextField(
                // fillColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
                label: "current password",
                hint: "",
                controller: NewPassword),
            15.verticalSpace,
            InputTextField(
                // fillColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
                label: "new password",
                hint: "",
                controller: ResetPassword),
            15.verticalSpace,
            InputTextField(
                // fillColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
                label: "retype password",
                hint: "",
                controller: ResetPassword),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.2.sw),
              child: PrimaryButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Privacy_family()));
                },
                text: 'reset password',
                textStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.purpleP500,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}

class AvatarWithIcon extends StatelessWidget {
  final String txt;
  const AvatarWithIcon({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 0.h),
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
                    Icons.close,
                    color: AppColors.purpleP500,
                    size: 12.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        2.verticalSpace,
        Text(
          txt,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w400,
                fontSize: 11.sp,
              ),
        ),
      ],
    );
  }
}
