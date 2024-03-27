import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Build_Profile/interested_in.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/custombackbutton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class Gender_Identity extends StatelessWidget {
  const Gender_Identity({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      Row(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: CustomBackButton()),
        ],
      ),
      20.verticalSpace,
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'identity',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppColors.purpleP500,
                    ),
              ),
            ),
            29.verticalSpace,
            IdentityContainer(txt: "woman"),
            20.verticalSpace,
            IdentityContainer(txt: "man"),
            20.verticalSpace,
            IdentityContainer(txt: "trans"),
            20.verticalSpace,
            IdentityContainer(txt: "gender nonbinary"),
            20.verticalSpace,
            IdentityContainer(txt: "different identity"),
            29.verticalSpace,
            PrimaryButton(
                text: 'continue',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Interested_in()));
                })
          ],
        ),
      ),
    ]);
  }
}

class IdentityContainer extends StatefulWidget {
  final String txt;

  const IdentityContainer({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  _IdentityContainerState createState() => _IdentityContainerState();
}

class _IdentityContainerState extends State<IdentityContainer> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tapped = !tapped;
        });
      },
      child: Container(
        padding: EdgeInsets.all(16),
        width: 335.w,
        height: 58.h,
        decoration: BoxDecoration(
          color: tapped ? AppColors.purpleP500.withOpacity(0.1) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.border, width: 2),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            widget.txt,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: tapped ? FontWeight.w700 : FontWeight.w400,
                  color: tapped ? AppColors.purpleP500 : AppColors.textPrimary,
                ),
          ),
          SizedBox(width: 10.w),
          tapped
              ? Icon(Icons.check, size: 20, color: AppColors.purpleP500)
              : SizedBox(),
        ]),
      ),
    );
  }
}
