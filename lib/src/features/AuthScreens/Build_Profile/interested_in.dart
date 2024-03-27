import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Build_Profile/race.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/custombackbutton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class Interested_in extends StatelessWidget {
  const Interested_in({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'interested in',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppColors.purpleP500,
                    ),
              ),
            ),
            10.verticalSpace,
            SizedBox(
              width: .8.sw,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  // ignore: lines_longer_than_80_chars
                  'select one or all',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textPrimary,
                      ),
                ),
              ),
            ),
            29.verticalSpace,
            IdentityContainer(txt: "male"),
            20.verticalSpace,
            IdentityContainer(txt: "female"),
            20.verticalSpace,
            IdentityContainer(txt: "gay/lesbian"),
            20.verticalSpace,
            IdentityContainer(txt: "bi"),
            20.verticalSpace,
            IdentityContainer(txt: "trans"),
            20.verticalSpace,
            IdentityContainer(txt: "no preference"),
            36.verticalSpace,
            PrimaryButton(
                text: 'continue',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => race_Screen()));
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
          color: tapped ? Color(0xffE94057).withOpacity(0.3) : Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: AppColors.border),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            widget.txt,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: tapped ? FontWeight.bold : FontWeight.w400,
                  color: tapped ? Color(0xffE94057) : AppColors.textPrimary,
                ),
          ),
          SizedBox(width: 10.w),
          tapped
              ? Icon(
                  Icons.check,
                  size: 20,
                  color: Color(0xffE94057),
                )
              : SizedBox(),
        ]),
      ),
    );
  }
}
