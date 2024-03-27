import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/setup_privacyScreens/privacy_family/view/privacy_family.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class Privacy_access extends StatefulWidget {
  const Privacy_access({super.key});

  @override
  State<Privacy_access> createState() => _Privacy_accessState();
}

class _Privacy_accessState extends State<Privacy_access> {
  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(children: [
                Text(
                  'firstly,',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: AppColors.purpleP500),
                ),
              ]),
              Row(
                children: [
                  Text(
                    'lets set your ',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(color: AppColors.purpleP500),
                  ),
                  CustomMainGradientText(
                    text: 'privacy',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ],
              ),
              35.verticalSpace,
              SizedBox(
                width: 0.86.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomMainGradientText(
                      text:
                          'this is real, safe, simple yet powerful\ntool to pair up with your known \npeople',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    14.verticalSpace,
                    CustomMainGradientText(
                      text: 'no messing around with strangers\nanymore',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
              40.verticalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/accesstocontactslist.png',
                    width: 50.w,
                    height: 50.h,
                    fit: BoxFit.cover,
                  ),
                  15.horizontalSpace,
                  Text(
                    'access to contacts list',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              100.verticalSpace,
              Align(
                alignment: Alignment.bottomCenter,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      'What The Crush ',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.red,
                            fontSize: 14.sp,
                          ),
                    ),
                    Text(
                      'requires access to your',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                    ),
                    Text(
                      'contact list to enhance your dating experience',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                    ),
                  ],
                ),
              ),
              40.verticalSpace,
              PrimaryButton(
                  text: 'approve access',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Privacy_family()));
                  })
            ],
          ),
        ),
      ),
    ]);
  }
}
