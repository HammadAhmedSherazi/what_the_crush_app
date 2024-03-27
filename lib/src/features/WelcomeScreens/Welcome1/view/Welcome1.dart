import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/LandingScreen/view/TellmemoreScreen.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/setup_privacyScreens/view/privacy_access.dart';

import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/closeButton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class Welcome1_Screen extends StatelessWidget {
  const Welcome1_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomCloseButton(onTap: () {
            Navigator.of(context).pop();
          })
        ],
      ),
      Column(children: [
        20.verticalSpace,
        SizedBox(
          width: 0.84.sw,
          child: Text(
            'your anonymous\nmode on!',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
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
                text: 'send discreet crush\nmessages',
                textAlign: TextAlign.start,
              ),
              10.verticalSpace,
              const CustomMainGradientText(
                text: 'admire your crushes anonymously',
                textAlign: TextAlign.start,
              ),
              10.verticalSpace,
              const CustomMainGradientText(
                text: 'expedite your dating\nor\njust love yourself more,',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Privacy_access()));
              },
            ),
            20.verticalSpace,
            SecondaryButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Tellmemore_Screen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'how it works?',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
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
      ])
    ]);
  }
}
