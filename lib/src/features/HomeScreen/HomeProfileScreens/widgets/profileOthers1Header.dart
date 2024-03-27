import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/Profile_Others_Emiliesgang_sheet.dart';

import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/pages/profile_others2.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/TextWithEditedButton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class ProfileOthers1Header extends StatelessWidget {
  const ProfileOthers1Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // 25.verticalSpace,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Emelie Robertson Jun..',
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
              5.verticalSpace,
              Row(
                children: [
                  RowIconWithText(
                    icon: Icons.lightbulb_circle_outlined,
                    txt: 'neuroticism',
                  ),
                  15.horizontalSpace,
                  RowIconWithText(
                    icon: Icons.lightbulb_circle_outlined,
                    txt: 'gemini, cancer',
                  )
                ],
              ),
              5.verticalSpace,
              Row(
                children: [
                  RowIconWithText(
                    icon: Icons.favorite_outline,
                    txt: 'crushes 71',
                  ),
                  15.horizontalSpace,
                  RowIconWithText(
                    icon: Icons.circle_outlined,
                    txt: 'admirers 125',
                  ),
                  15.horizontalSpace,
                  RowIconWithText(
                    icon: Icons.star_border,
                    txt: 'stars 956',
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              10.verticalSpace,
              Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: IconsContainer(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Profile_Other2()));
                  },
                  icon: Icons.arrow_upward_outlined,
                ),
              ),
              10.verticalSpace,
              IconsContainer(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return profile_others_EmiliesgangSheet();
                    },
                  );
                },
                icon: Icons.groups_outlined,
              )
            ],
          ),
        ],
      ),
    ]);
  }
}

class IconsContainer extends StatelessWidget {
  final VoidCallback onPressed;

  final IconData icon;
  const IconsContainer({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
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
        width: 50.w,
        height: 50.h,
        child: Icon(
          icon,
          size: 26.sp,
          color: AppColors.purpleP500,
        ),
      ),
    );
  }
}
