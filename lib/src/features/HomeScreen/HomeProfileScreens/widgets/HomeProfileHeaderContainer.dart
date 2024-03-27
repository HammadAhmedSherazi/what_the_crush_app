import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/profile_others1.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class HomeProfileHeaderContainer extends StatelessWidget {
  const HomeProfileHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Profile_Other1()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          margin: EdgeInsets.symmetric(vertical: 20.h),
          width: 322.w,
          height: 82.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.blue.withOpacity(0.1)),
          child: Text(
            textAlign: TextAlign.center,
            "your profile is visible to users\nwho has your phone number or email address\nand members of gang you are part of,\nexcept blocked",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w400,
                fontSize: 11.sp),
          ),
        ),
      ),
      Positioned(
        top: 0,
        // left: 0.6.sw,
        right: 0,
        child: Container(
          padding: const EdgeInsets.all(4),
          margin: EdgeInsets.fromLTRB(0, 15.h, 0.w, 0),
          decoration: BoxDecoration(
            color: Color(0xffF1CFD4),
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(27),
            ),
            border: Border.all(color: AppColors.white, width: 1),
          ),
          width: 30.w,
          height: 30.h,
          child: Icon(
            Icons.close,
            size: 15.sp,
            color: AppColors.black,
          ),
        ),
      ),
    ]);
  }
}
