import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/SigninScreen/view/SigninScreen.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/Eligibility.dart/view/EligibilityScreen.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/AppGradients.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/marketing_carousel.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.bg,
          gradient: AppGradients.secondaryBgGradient,
        ),
        child: Scaffold(
          backgroundColor: AppColors.bg,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 0,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              MarketingCarousel(),
              40.verticalSpace,
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: PrimaryButton(
                    text: 'create an account',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EligibiltyScreen()));
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'already have an account?',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.4,
                        ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninScreen()));
                    },
                    child: Text(
                      'sign in',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: AppColors.purpleP500,
                          ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
