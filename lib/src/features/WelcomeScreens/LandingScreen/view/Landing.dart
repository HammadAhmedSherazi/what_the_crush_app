import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/Eligibility.dart/view/EligibilityScreen.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/LandingScreen/view/TellmemoreScreen.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/onboarding.dart/view/onboardingScreen.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/SkipButton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomSkipButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EligibiltyScreen()));
                        },
                      )
                    ],
                  ),
                  40.verticalSpace,
                  Image.asset('assets/images/app_logo.png'),
                  50.verticalSpace,
                  CustomMainGradientText(
                    text:
                        'Still Guessing \n Who Is Secretly \n Crushing On You?',
                  ),
                  40.verticalSpace,
                  Text(
                    'The safest and most non-embarrassing \n solution is here!',
                    textScaleFactor: 1,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          letterSpacing: 0.5,
                        ),
                  ),
                  50.verticalSpace,
                  SecondaryButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Tellmemore_Screen()))
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/video-light.png',
                          width: 24,
                          height: 24,
                        ),
                        10.horizontalSpace,
                        Text(
                          'Tell Me More',
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  20.verticalSpace,
                  PrimaryButton(
                    text: 'Jump In',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnboardingScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
