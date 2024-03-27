import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class connected_gangs_Header extends StatelessWidget {
  const connected_gangs_Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 0.2.sw, left: 25),
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.textInactive,
            size: 15.sp,
          ),
        ),
        Container(
          // margin: EdgeInsets.symmetric(horizontal: 20.w),
          width: MediaQuery.of(context).size.width - 155,
          height: 190.h,
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.all(2),

          
          child: ListView.builder(
            itemExtent: 75,
            scrollDirection: Axis.horizontal,
            itemCount: 5, 
            itemBuilder: (BuildContext context, int index) {
             
              return Column(
                children: [
                  Container(
                    width: 59.w,
                    height: 59.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/images/d1.png',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          left: 40.w,
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              color: AppColors.white,
                            ),
                            child: Icon(
                              Icons.arrow_outward,
                              color: AppColors.purpleP500,
                              size: 12.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Cholie\nGarcia',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w400,
                          fontSize: 9.sp,
                        ),
                  ),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 0.2.sw, right: 25),
          child: Icon(
            Icons.arrow_forward_ios,
            color: AppColors.textInactive,
            size: 15.sp,
          ),
        ),
      ],
    );
  }
}
