import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Build_Profile/view/Build_Profile.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Discrete_message_sent/view/Discrete_message.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/AppGradients.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class SuccessfulRegistration extends StatefulWidget {
  const SuccessfulRegistration({super.key});

  @override
  State<SuccessfulRegistration> createState() => _SuccessfulRegistrationState();
}

class _SuccessfulRegistrationState extends State<SuccessfulRegistration> {
  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      40.verticalSpace,
      Image.asset('assets/images/successfully.png'),
      20.verticalSpace,
      GradientText(
        'successfully',
        colors: AppGradients.mainGradient.colors,
        style: Theme.of(context).textTheme.displayMedium,
      ),
      10.verticalSpace,
      GradientText(
        'signed up',
        colors: AppGradients.mainGradient.colors,
        style: Theme.of(context).textTheme.displayMedium,
      ),
      20.verticalSpace,
      SizedBox(
        width: .7.sw,
        child: Text(
          'your discreet crush message is ready to be sent',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: const Color(0xff8A2387)),
        ),
      ),
      35.verticalSpace,
      SizedBox(
        width: 335.w,
        child: SecondaryButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Discrete_Message()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/Send_duotone.png'),
              Text(
                'send discreet crush message now',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.red,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
        ),
      ),
      70.verticalSpace,
      Row(
        children: [
          const Expanded(
            child: Divider(
              color: AppColors.textInactive,
              thickness: 1,
              endIndent: 40,
            ),
          ),
          10.horizontalSpace,
          Text(
            'or',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          10.horizontalSpace,
          const Expanded(
            child: Divider(
              color: AppColors.textInactive,
              thickness: 1,
              indent: 40,
            ),
          ),
        ],
      ),
      50.verticalSpace,
      PrimaryButton(
        text: 'build profile',
        onPressed: () {
          Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BuildProfile()));
              
          // Navigator.pushNamed(context, '/CompleteProfile');
        },
      ),
    ]);
  }
}
