import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/EditScreenTextfields.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/widgets/gradeint_divider.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/SettingsScreen/widgets/supportscreen_bottomsheet.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';

class SupportScreenBody extends StatefulWidget {
  @override
  State<SupportScreenBody> createState() => _SupportScreenBodyState();
}

class _SupportScreenBodyState extends State<SupportScreenBody> {
  final TextEditingController newPassword = TextEditingController();

  final TextEditingController resetPassword = TextEditingController();

  final List<String> texts = [
    'how to earn free credits ',
    'why can’t I top up',
    'what is the validity of my credits',
    'can I transfer my balance credits',
    'can I transfer my balance credits',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.verticalSpace,
              Text(
                'reach out by submitting your query below',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textPrimary, fontWeight: FontWeight.w400),
              ),
              Text(
                'typically replies within 24 hours',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp),
              ),
              19.verticalSpace,
              Row(
                children: [
                  Gradient_Divider(),
                  10.horizontalSpace,
                  CustomMainGradientText(
                    text: 'your concern',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  10.horizontalSpace,
                  Gradient_Divider(),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Color(0xfff27121),
                          Color(0xffe94057),
                          Color(0xff8a2387),
                        ],
                      ).createShader(bounds);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      size: 19.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              HintTextIcon(
                onPressed: () {},
                txt: 'select your concern',
                icon: Icons.keyboard_arrow_down,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                width: 335.w,
                height: 114.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.white,
                  border: Border.all(
                    color: AppColors.border,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "elaborate your concern",
                    hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.textInactive,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
              ),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '(0/1000 characters)',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textInactive,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    width: 110.w,
                    height: 38.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.white,
                      border: Border.all(
                        color: AppColors.bgGray,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'send',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textInactive,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp),
                      ),
                    ),
                  ),
                ],
              ),
              19.verticalSpace,
              Row(
                children: [
                  Gradient_Divider(),
                  10.horizontalSpace,
                  CustomMainGradientText(
                    text: 'self help',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  10.horizontalSpace,
                  Gradient_Divider(),
                ],
              ),
              Row(
                children: [
                  Text(
                    'credits & subscription', // Change text here
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp),
                  ),
                  10.horizontalSpace,
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        barrierColor: Colors.black.withOpacity(0.5),
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return SupportBottomSheet();
                        },
                      );
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_up,
                      color: AppColors.textInactive,
                      size: 16.sp,
                    ),
                  ),
                ],
              ),
              10.verticalSpace,
              ListView_Container(texts: texts),
              10.verticalSpace,
              Row(
                children: [
                  Text(
                    'login', // Change text here
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp),
                  ),
                  5.horizontalSpace,
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: AppColors.textInactive,
                    size: 16.sp,
                  )
                ],
              ),
              6.verticalSpace,
              ListView_Container(texts: texts),
              10.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

class ListView_Container extends StatelessWidget {
  const ListView_Container({
    super.key,
    required this.texts,
  });

  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: 206.w,
      child: ListView.builder(
        itemCount: texts.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            margin: EdgeInsets.symmetric(vertical: 3.h),
            width: 180.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.white,
              border: Border.all(
                color: AppColors.border,
              ),
            ),
            child: Text(
              texts[index], // Change text here
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textInactive,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp),
            ),
          );
        },
      ),
    );
  }
}