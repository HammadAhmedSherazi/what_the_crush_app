import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class profile_Others_headerButtons extends StatelessWidget {
  const profile_Others_headerButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffbE8E6EA).withOpacity(0.4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(27),
                topRight: Radius.circular(27),
                bottomLeft: Radius.circular(27),
                bottomRight: Radius.circular(10),
              ),
              border: Border.all(color: AppColors.white, width: 1),
            ),
            width: 50,
            height: 50,
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.white,
              size: 18.sp,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffbE8E6EA).withOpacity(0.4),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(27),
            ),
            border: Border.all(color: AppColors.white, width: 1),
          ),
          width: 50,
          height: 50,
          child: Icon(
            CupertinoIcons.light_max,
            color: Colors.red,
            size: 18.sp,
          ),
        ),
      ],
    );
  }
}

class EditProfileHeaderButtons extends StatelessWidget {
  const EditProfileHeaderButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(27),
                topRight: Radius.circular(27),
                bottomLeft: Radius.circular(27),
                bottomRight: Radius.circular(10),
              ),
              border: Border.all(color: AppColors.border, width: 1),
            ),
            width: 50,
            height: 50,
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
              size: 18.sp,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.mustard,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(27),
                topRight: Radius.circular(27),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(27),
              ),
              border: Border.all(color: AppColors.mustard, width: 1),
            ),
            width: 50,
            height: 50,
            child: Icon(
              Icons.check,
              color: AppColors.purpleP500,
              size: 24.sp,
            ),
          ),
        ),
      ],
    );
  }
}
