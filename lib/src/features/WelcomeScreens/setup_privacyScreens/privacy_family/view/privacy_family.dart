import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/widgets/ListTile_Container.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class Privacy_family extends StatefulWidget {
  const Privacy_family({super.key});

  @override
  State<Privacy_family> createState() => _Privacy_familyState();
}

class _Privacy_familyState extends State<Privacy_family> {
  final SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(children: [
                Text(
                  "now, let's",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: AppColors.purpleP500),
                ),
              ]),
              Row(
                children: [
                  Text(
                    'block your ',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(color: AppColors.purpleP500),
                  ),
                  CustomMainGradientText(
                    text: 'family',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ],
              ),
              35.verticalSpace,
              SizedBox(
                width: 0.86.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomMainGradientText(
                      text: "& friends who you don’t want to get matched with",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              Container(
                width: 334.w,
                height: 48.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  controller: SearchController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        size: 20,
                        color: AppColors.bgGray,
                      )),
                ),
              ),
              20.verticalSpace,
              ListTile_Container(
                txt: 'Emelie',
                txt2: 'em.elie@outlook.com',
              ),
              Divider(
                indent: 70,
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTileSimpleAvatar(
                          txt: 'Abigail ',
                          txt2: 'abigail@outlook.com',
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.favorite_outline,
                    size: 15.sp,
                    color: AppColors.bgGray,
                  ),
                ],
              ),
              Divider(
                indent: 70,
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile_Container(
                          txt: 'Stephannie ',
                          txt2: 'step.hen@outlook.com',
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_outward,
                    size: 14.sp,
                    color: AppColors.bgGray,
                  ),
                ],
              ),
              // ListTile_Container(
              //   txt: 'Stephannie ',
              //   txt2: 'step.hen@outlook.com',
              // ),
              Divider(
                indent: 70,
                height: 15,
              ),
              ListTile_Container(
                txt: 'Penelope ',
                txt2: 'pen.lop@outlook.com',
              ),
              Divider(
                indent: 70,
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile_Container(
                          txt: ' Chloe',
                          txt2: 'ch.loe@outlook.com',
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.close,
                    size: 15.sp,
                    color: AppColors.bgGray,
                  ),
                ],
              ),
              // ListTile_Container(
              //   txt: 'Chloe',
              //   txt2: 'ch.loe@outlook.com',
              // ),
              Divider(
                indent: 70,
                height: 15,
              ),
              ListTileSimpleAvatar(
                txt: 'Fatima',
                txt2: 'fat.imo@outlook.com',
              ),
              Divider(
                indent: 70,
                height: 15,
              ),
              29.verticalSpace,
              PrimaryButton(
                  text: 'block selected',
                  onPressed: () {
                    ModalBottomSheet();
                  })
            ],
          ),
        ),
      ),
    ]);
  }

  ModalBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 116.h,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'selected contact(s) blocked',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.purpleP500,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  15.verticalSpace,
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'you can update it in ',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.textPrimary,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                        TextSpan(
                          text: 'Settings',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.blue,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                        TextSpan(
                          text: ' later',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.textPrimary,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
