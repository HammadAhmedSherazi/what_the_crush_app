import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Build_Profile/enable_notifications.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/custombackbutton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';
import 'package:what_the_crush_app/src/widgets/select_interest.dart';

class Interests_Screen extends StatefulWidget {
  const Interests_Screen({super.key});

  @override
  State<Interests_Screen> createState() => _Interests_ScreenState();
}

class _Interests_ScreenState extends State<Interests_Screen> {
  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const CustomBackButton(),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Enable_Notifications()));
              // Navigator.of(context).pushNamedAndRemoveUntil(
              //   '/EnableNotification',
              //   (route) => false,
              // );
            },
            child: Text(
              'skip',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Color(0xffE94057), fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      15.verticalSpace,
      SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Text(
                'interests',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppColors.purpleP500,
                    ),
              ),
            ],
          ),
          SelectInterestOptions(),
          30.verticalSpace,
          PrimaryButton(
              text: 'continue',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Enable_Notifications()));
              })
        ]),
      ),
    ]);
  }
}
