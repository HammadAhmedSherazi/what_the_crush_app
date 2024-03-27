import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/Secondarybutton.dart';

import 'package:what_the_crush_app/src/helpers/AppButtons.dart/SkipButton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';

class InvalidAgeScreen extends StatelessWidget {
  const InvalidAgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
                constraints: BoxConstraints(
                  minHeight: 1.sh,
                  minWidth: 1.sw,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/onboarding_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(children: [
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [CustomSkipButton()],
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sorry!\nYou'll have to wait.",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                  color: AppColors.purpleP500,
                                  height: 1.25,
                                ),
                          ),
                          40.verticalSpace,
                          CustomMainGradientText(
                            textAlign: TextAlign.start,
                            text: 'Please come back in\n121 days',
                          ),
                          20.verticalSpace,
                          Text(
                            'You must be of legal age to use this app.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColors.blueP100,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          235.verticalSpace,
                          SecondaryButton(
                            onPressed: () {},
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'set a reminder',
                                  style: TextStyle(color: AppColors.red),
                                ),
                              ],
                            ),
                          ),
                        ])
                  ]),
                )))));
  }
}
 

    //     child: SecondaryButton(
    //       onPressed: () {},
    //       child: const Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(
    //             'set A Reminder',
    //             style: TextStyle(color: AppColors.red),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
      
           
    //     ),
    //     20.verticalSpace,
    //     SizedBox(
    //       width: 0.78.sw,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           const CustomMainGradientText(
    //             text: 'Please come back in',
    //           ),
    //           10.verticalSpace,
    //           Row(
    //             children: [
    //               Text(
    //                 remainingTime.difference,
    //                 style: Theme.of(context).textTheme.displayMedium?.copyWith(
    //                       color: AppColors.purpleP500,
    //                       height: 1.5,
    //                     ),
    //               ),
    //               CustomMainGradientText(
    //                 text: remainingTime.unit,
    //               ),
    //             ],
    //           ),
    //           20.verticalSpace,
    //           Text(
    //             'You must be of legal age to use this app.',
    //             style: Theme.of(context).textTheme.bodyMedium?.copyWith(
    //                   color: AppColors.blueP100,
    //                   height: 1.5,
    //                   fontWeight: FontWeight.w400,
    //                 ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
//   }
// }
