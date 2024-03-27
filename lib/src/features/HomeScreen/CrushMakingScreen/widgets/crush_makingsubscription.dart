import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/CreditScreens/view/CreditScreen.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class crush_makingsubscription extends StatelessWidget {
  const crush_makingsubscription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text(
            "crush making is a premium feature\n          that suggests you crushes\nbased on your preferences and zodiac signs",
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(
                  color: AppColors.purpleP500,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
          ),
          15.verticalSpace,
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreditScreen()));
            },
            child: Container(
              width: 153.w,
              height: 34.h,
              decoration: BoxDecoration(
                  color: AppColors.mustard,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
              child: Center(
                child: Text(
                  'buy annual subscription',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(
                        color: AppColors.purpleP500,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                ),
              ),
            ),
          )
        ],
      );
  }
}