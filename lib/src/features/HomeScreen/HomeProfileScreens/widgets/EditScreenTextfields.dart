import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class FieldWithIcon extends StatefulWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String txt1;
  final String txt2;

  const FieldWithIcon(
      {super.key,
      required this.onPressed,
      required this.txt1,
      required this.txt2,
      required this.icon});

  @override
  State<FieldWithIcon> createState() => _FieldWithIconState();
}

class _FieldWithIconState extends State<FieldWithIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        width: 335.w,
        height: 40.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.txt1,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 10.sp,
                    color: AppColors.textInactive,
                    fontWeight: FontWeight.w400),
              ),
              7.horizontalSpace,
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.txt2,
                    hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textPrimary,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Icon(
                widget.icon,
                color: AppColors.purpleP500,
                size: 15.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditProfileEmailField extends StatefulWidget {
  final String txt1;
  final String txt2;

  const EditProfileEmailField(
      {super.key, required this.txt1, required this.txt2});

  @override
  State<EditProfileEmailField> createState() => _EditProfileEmailFieldState();
}

class _EditProfileEmailFieldState extends State<EditProfileEmailField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      width: 335.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.txt1,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 10.sp,
                  color: AppColors.textInactive,
                  fontWeight: FontWeight.w500),
            ),
            7.horizontalSpace,
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.txt2,
                  hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.textPrimary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileEditField extends StatefulWidget {
  final String img;
  final String txt2;

  const ProfileEditField({
    Key? key,
    required this.img,
    required this.txt2,
  }) : super(key: key);

  @override
  State<ProfileEditField> createState() => _ProfileEditFieldState();
}

class _ProfileEditFieldState extends State<ProfileEditField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      width: 335.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(widget.img),
            // Text(
            //   widget.txt1,
            //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            //       fontSize: 10.sp,
            //       color: AppColors.textInactive,
            //       fontWeight: FontWeight.w400),
            // ),
            7.horizontalSpace,
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.txt2,
                  hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.textPrimary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Icon(
              Icons.close,
              color: AppColors.purpleP500,
              size: 15.sp,
            ),
          ],
        ),
      ),
    );
  }
}

class HintTextIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final String txt;
  final IconData? icon; // Make IconData optional by using IconData?

  const HintTextIcon({
    Key? key,
    required this.onPressed,
    required this.txt,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        width: 335.w,
        height: 43.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: txt,
                    hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
              ),
              if (icon != null) // Conditionally show the icon if it's provided
                Icon(
                  icon,
                  color: AppColors.textInactive,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutField extends StatelessWidget {
  const AboutField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      // width: 335.w,
      // height: 42.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Center(
        child: Row(
          children: [
            Text(
              'My name is Annabelle Parker and I enjoy\nmeeting new people and finding ways to\nhelp them have an uplifting experience. I\nenjoy r..',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
