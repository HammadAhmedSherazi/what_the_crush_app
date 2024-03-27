import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Build_Profile/view/Build_Profile.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/closeButton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/AppGradients.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class Sent_Discrete_Message extends StatelessWidget {
  const Sent_Discrete_Message({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          20.verticalSpace,
          CustomCloseButton(onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => ValidAgeScreen()));
            Navigator.of(context).pop();
          }),
        ],
      ),
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GradientText(
              'Sent!\nyour discreet crush\nmessage',
              colors: AppGradients.mainGradient.colors,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            10.verticalSpace,
            SizedBox(
              width: .8.sw,
              child: Text(
                // ignore: lines_longer_than_80_chars
                'to phone as a text message\nor to the email address you provided ',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.purpleP500,
                    ),
              ),
            ),
          ],
        ),
      ),
      30.verticalSpace,
      Text(
        'Emelie',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.black),
      ),
      Column(
        children: [
          Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 250.w,
              height: 195.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(233, 64, 87, 0.1),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.all(20),
                width: 235.w,
                height: 136.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Emelie, your friend sent you\na discreet crush message!\nWant to know who it is!?\n",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.black,
                            ),
                      ),
                      TextSpan(
                        text: 'Download ',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Color(0xff2934D0),
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: "the app or visit ",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.black,
                            ),
                      ),
                      TextSpan(
                        text: 'WadaCrush.com',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Color(0xff2934D0),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                  left: 110,
                ),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  // borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/d1.png',
                      )),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 210, top: 220),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 1,
                    backgroundColor: AppColors.mustard,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    'unsend',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: AppColors.purpleP700,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp),
                  )),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(
              left: 40,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '2:55 PM',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.bgGray,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp),
                ),
              ],
            ),
          ),
          60.verticalSpace,
          SecondaryButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BuildProfile()));
              },
              child: Text('           you’ve 2 more free credits           ',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color(0xffE94057), fontWeight: FontWeight.w600))),
        ],
      ),
      10.verticalSpace,
      Text(
        "remember it won't hurt",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.textPrimary,
            ),
      ),
    ]);
  }
}
