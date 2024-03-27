import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Build_Profile/interestsScreen.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/custombackbutton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class Relationship_Status extends StatelessWidget {
  const Relationship_Status({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      20.verticalSpace,
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
            3.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'relationship status',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppColors.purpleP500,
                    ),
              ),
            ),
            29.verticalSpace,
            IdentityContainer(txt: "single"),
            20.verticalSpace,
            IdentityContainer(txt: "committed"),
            20.verticalSpace,
            IdentityContainer(txt: "complicated"),
            20.verticalSpace,
            IdentityContainer(txt: "recent break up"),
            20.verticalSpace,
            IdentityContainer(txt: "open relationship"),
            20.verticalSpace,
            IdentityContainer(txt: "friends with benefits"),
            36.verticalSpace,
            PrimaryButton(
                text: 'continue',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Interests_Screen()));
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
