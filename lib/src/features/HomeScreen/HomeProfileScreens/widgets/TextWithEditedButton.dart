import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/EditProfileScreen.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class Text_With_Edit_Button extends StatelessWidget {
  const Text_With_Edit_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Annabelle Parker',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: AppColors.purpleP500,
                            fontWeight: FontWeight.w700,
                            fontSize: 24.sp,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  "agender, 23, united states\ncomplicated relationship",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditProfileScreen()));
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.mustard,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(27),
                    topRight: Radius.circular(27),
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(27),
                  ),
                  border: Border.all(color: AppColors.white, width: 1),
                ),
                width: 52.w,
                height: 52.h,
                child: Icon(
                  Icons.edit_outlined,
                  size: 30.sp,
                  color: AppColors.purpleP500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class RowIconWithText extends StatelessWidget {
  final IconData icon;
  final String txt;
  const RowIconWithText({
    Key? key,
    required this.icon,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.textInactive,
          size: 13.sp,
        ),
        Text(
          txt,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
        ),
      ],
    );
  }
}
