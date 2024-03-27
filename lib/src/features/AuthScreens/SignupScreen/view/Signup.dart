import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/SigninScreen/view/SigninScreen.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Successful_Registration/view/Successful_Reg.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/Input_Textfield/Input_Textfield.dart';
import 'package:what_the_crush_app/src/helpers/Input_Textfield/phone_number_field.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';
import 'package:what_the_crush_app/src/widgets/layout/ScrollableSheet.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      // 2.verticalSpace,
      Image.asset('assets/images/app_logo.png'),
      20.verticalSpace,
      PhoneNumberField(hinttxt: '(262) 287-6000', labeltxt: 'Phone number'),
      InputTextField(
        hint: 'sign up with your email',
        label: 'Email',
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        fillColor: Colors.white,
      ),
      20.verticalSpace,
      InputTextField(
        hint: 'set a password',
        label: 'Password',
        controller: passwordController,
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        fillColor: Colors.white,
      ),
      20.verticalSpace,
      PrimaryButton(
          text: 'Sign up',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SuccessfulRegistration()));
          }),
      20.verticalSpace,
      Row(
        children: [
          const Expanded(
            child: Divider(
              color: AppColors.textInactive,
              thickness: 1,
              endIndent: 10,
            ),
          ),
          10.horizontalSpace,
          Text(
            'or sign up with',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          10.horizontalSpace,
          const Expanded(
            child: Divider(
              color: AppColors.textInactive,
              thickness: 2,
              indent: 10,
            ),
          ),
        ],
      ),
      25.verticalSpace,
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset('assets/images/iconfb.png'),
        Image.asset('assets/images/linkdein.png'),
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'already have an account?',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.4,
                ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SigninScreen()));
            },
            child: Text(
              'sign in',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AppColors.purpleP500,
                  ),
            ),
          ),
        ],
      ),
      10.verticalSpace,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              //  String title = 'Your Title Here'; // Set your title here
              ModalBottomsheet1(context);
            },
            child: Text('terms of use',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.bgGray,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    )),
          ),
          GestureDetector(
            onTap: () {
              //  String title = 'Your Title Here'; // Set your title here
              ModalBottomsheet(context);
            },
            child: Text('privacy policy',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.bgGray,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    )),
          ),
        ],
      ),
      20.verticalSpace
    ]);
  }

  Future<DraggableScrollableSheet?> ModalBottomsheet1(
    BuildContext context,
  ) =>
      showModalBottomSheet<DraggableScrollableSheet?>(
        context: context,

        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(0.15.sw)),
        ),
        // showDragHandle: true,
        isScrollControlled: true,
        useSafeArea: true,
        builder: (BuildContext context) {
          return DraggableScrollableSheet(
              initialChildSize: 0.89, // Set the initial size of the sheet
              minChildSize: 0.75, // Set the minimum size of the sheet
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Scaffold(
                  body: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(0.15.sw)),
                      color: AppColors.bg,
                    ),
                    child: Column(
                      children: [
                        // Draggablehandle bar
                        SheetIndicator(),
                        Expanded(
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: GestureDetector(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 25, top: 20),
                                    child: Text(
                                      textAlign: TextAlign.start,
                                      'terms of use',
                                      style: TextStyle(
                                          color: AppColors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisi morbi tempus iaculis urna id volutpat. Mi proin sed libero enim sed faucibus turpis. Convallis tellus id interdum velit laoreet id donec ultrices. At quis risus sed vulputate odio ut enim blandit. Lacus viverra vitae congue eu consequat ac felis donec et. Vitae elementum curabitur vitae nunc sed velit dignissim sodales. In cursus turpis massa tincidunt dui ut. Laoreet non curabitur gravida arcu ac tortor. Habitant morbi tristique senectus et netus et. Sit amet aliquam id diam maecenas ultricies mi. Nulla at volutpat diam ut venenatis tellus in metus.Consequat nisl vel pretium lectus quam id leo. Adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Dui faucibus in ornare quam viverra. Amet mattis vulputate enim nulla aliquet porttitor. Tincidunt praesent semper feugiat nibh sed pulvinar proin. Fermentum posuere urna nec tincidunt. Gravida in fermentum et sollicitudin ac. Ut etiam sit amet nisl. Sem integer vitae justo eget magna. Egestas sed tempus urna et pharetra. Nunc aliquet bibendum enim facilisis gravida neque convallis. Tempus quam pellentesque nec nam aliquam sem et tortor. Porttitor massa id neque aliquam vestibulum morbi blandit cursus risus. Fames ac turpis egestas maecenas pharetra convallis. Pretium fusce id velit ut tortor pretium viverra. Eget duis at tellus at urna condimentum mattis pellentesque id. Elementum curabitur vitae nunc sed. Euismod elementum nisi quis eleifend quam adipiscing vitae proin. Bibendum neque egestas congue quisque....',
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      );
}
