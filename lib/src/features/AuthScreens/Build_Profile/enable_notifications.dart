import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/Welcome1/view/Welcome1.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class Enable_Notifications extends StatefulWidget {
  const Enable_Notifications({super.key});

  @override
  State<Enable_Notifications> createState() => _Enable_NotificationsState();
}

class _Enable_NotificationsState extends State<Enable_Notifications> {
  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(
      columnMainAxisAlignment: MainAxisAlignment.center,
      body: [
        Image.asset(
          'assets/images/enable_notification.png',
          width: 100.w,
          height: 90.h,
          fit: BoxFit.contain,
        ),
        50.verticalSpace,
        Text(
          'enable notifications',
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: AppColors.purpleP500,
              ),
        ),
        10.verticalSpace,
        Text(
          'its a great feeling to know your secret crush',
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color.fromRGBO(0, 0, 0, 0.7),
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          'loves you back!',
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color.fromRGBO(0, 0, 0, 0.7),
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          'enable push-notifications to be informed',
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color.fromRGBO(
              0,
              0,
              0,
              0.7,
            ), // Adjust the RGB values and opacity as needed
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SizedBox(
          child: PrimaryButton(
            text: 'enable notifications',
            onPressed: () {
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Welcome1_Screen()));
              // await Navigator.of(context).pushNamed(
              //   '/Welcome',
              // );
            },
          ),
        ),
      ),
    );
  }
}
