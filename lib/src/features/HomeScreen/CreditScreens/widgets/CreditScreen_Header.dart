import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CreditScreen_Header extends StatelessWidget {
  const CreditScreen_Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 600.h,
        decoration: BoxDecoration(
            color: AppColors.bg.withOpacity(0.9),
            boxShadow: [
              BoxShadow(
                  color: AppColors.bgGray.withOpacity(0.3),
                  blurRadius: 2,
                  spreadRadius: 0.2,
                  offset: Offset(4, 1))
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'credits',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(
                              color: AppColors.purpleP500,
                              fontWeight: FontWeight.w700,
                              fontSize: 34.sp),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        // padding: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color:
                                  AppColors.bgGray.withOpacity(0.1),
                              width: 1),
                        ),
                        width: 45,
                        height: 45,
                        child: const Icon(
                          Icons.close,
                          color: AppColors.purpleP500,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ));
  }
}
