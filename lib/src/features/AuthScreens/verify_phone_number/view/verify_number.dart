import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/otpScreen/view/otpScreen.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/ValidAge.dart/view/Valid_age.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/closeButton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/helpers/Input_Textfield/phone_number_field.dart';

class VerifyPhoneNumber extends StatefulWidget {
  const VerifyPhoneNumber({super.key});

  @override
  State<VerifyPhoneNumber> createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    // final MobileInputController = TextEditingController();
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomCloseButton(onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ValidAgeScreen()));
                        // Navigator.of(context).pop();
                      })
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomMainGradientText(
                        text: "firstly, let's",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(
                        'verify your',
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: AppColors.purpleP500,
                                ),
                      ),
                      Text(
                        'identity',
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: AppColors.purpleP500,
                                ),
                      ),
                      20.verticalSpace,
                      SizedBox(
                        width: .8.sw,
                        child: Text(
                          // ignore: lines_longer_than_80_chars
                          'your details are never revealed to your crush even if they bribe us!',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppColors.textInactive,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  25.verticalSpace,
                  // IntlPhoneField Pkg
                  PhoneNumberField(
                      labeltxt: 'Mobile Number', hinttxt: '331 623 8413'),

                  200.verticalSpace,
                  PrimaryButton(
                      text: 'Validate',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpScreen()));
                      }),
                  10.verticalSpace,
                  Text(
                    "remember it won't hurt",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textPrimary,
                        ),
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
