import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Build_Profile/view/Build_Profile.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/crush_detailForm/view/crush_detail.dart';

import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';

class ValidAgeScreen extends StatelessWidget {
  const ValidAgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
              constraints: BoxConstraints(
                minHeight: 1.sh,
                minWidth: 1.sw,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      60.verticalSpace,
                      SizedBox(
                        width: 0.84.sw,
                        child: Text(
                          'congratulations!\nget ready to express.',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                color: AppColors.purpleP500,
                              ),
                        ),
                      ),
                      35.verticalSpace,
                      SizedBox(
                        width: 0.78.sw,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const CustomMainGradientText(
                              text: 'your secret love to people you know',
                              textAlign: TextAlign.start,
                            ),
                            10.verticalSpace,
                            const CustomMainGradientText(
                              text: 'without embarrassing each other\nand',
                              textAlign: TextAlign.start,
                            ),
                            10.verticalSpace,
                            const CustomMainGradientText(
                              text:
                                  'know who is secretly crushing back on you!',
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                      100.verticalSpace,
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PrimaryButton(
                            text: 'send a secret crush message',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Crush_Detail_Form()));
                            },
                          ),
                          20.verticalSpace,
                          SecondaryButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BuildProfile()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'set up my profile',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: AppColors.red,
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      20.verticalSpace,
                    ],
                  )))),
        ));
  }
}
