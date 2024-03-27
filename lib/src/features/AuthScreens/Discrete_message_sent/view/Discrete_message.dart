import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Discrete_message_sent/view/Sent_Discrete_message.dart';
import 'package:what_the_crush_app/src/features/WelcomeScreens/ValidAge.dart/view/Valid_age.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/closeButton.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/AppGradients.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/widgets/edit_anonymous_msg.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class Discrete_Message extends StatelessWidget {
  const Discrete_Message({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomCloseButton(onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ValidAgeScreen()));
            // Navigator.of(context).pop();
          }),
        ],
      ),
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GradientText(
              'your message\nis ready to send',
              colors: AppGradients.mainGradient.colors,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            10.verticalSpace,
            SizedBox(
              width: .8.sw,
              child: Text(
                // ignore: lines_longer_than_80_chars
                'continue to send ',
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
                  onPressed: () {
                    showModalBottomSheet(
                      barrierColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return EditAnonymousMsg();
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 1,
                    backgroundColor: AppColors.mustard,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    'edit',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: AppColors.purpleP700,
                          fontWeight: FontWeight.w700,
                        ),
                  )),
            )
          ]),
        ],
      ),
      79.verticalSpace,
      PrimaryButton(
          text: 'send a crush anonymously',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sent_Discrete_Message()));
          }),
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
