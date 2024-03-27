import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/ForgotPassword/view/forgotPasswordScreen.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/SignupScreen/view/Signup.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/widgets/bottomNavBar.dart';
import 'package:what_the_crush_app/src/features/Providers/navbar_provider.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/Input_Textfield/Input_Textfield.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';
import 'package:what_the_crush_app/src/widgets/layout/ScrollableSheet.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  45.verticalSpace,
                  Image.asset('assets/images/app_logo.png'),
                  28.verticalSpace,
                  InputTextField(
                    hint: 'sign in with email',
                    label: 'Email',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    fillColor: Colors.white,
                  ),
                  20.verticalSpace,
                  InputTextField(
                    hint: 'Type your password',
                    label: 'Password',
                    controller: passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    fillColor: Colors.white,
                  ),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));

                          // Navigator.pushNamed(context, '/ForgotPassword');
                        },
                        child: Text(
                          'forgot password?',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  PrimaryButton(
                      text: 'Sign in',
                      onPressed: () {
                        final bottomProvider =
                            Provider.of<BottomProviderController>(context,
                                listen: false);
                        bottomProvider.navBarChange(0);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavBar()));
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
                        'or sign in with',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      10.horizontalSpace,
                      const Expanded(
                        child: Divider(
                          color: AppColors.textInactive,
                          thickness: 1,
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
                        'no account yet?',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4,
                            ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                        },
                        child: Text(
                          'sign up',
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: AppColors.purpleP500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //  String title = 'Your Title Here'; // Set your title here
                          ModalBottomsheet1(context);
                        },
                        child: Text('terms of use',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
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
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.bgGray,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    )),
                      ),
                    ],
                  ),
                  20.verticalSpace
                ],
              ),
            ),
          ),
        ),
      ),
    );
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
                                          fontSize: 20.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisi morbi tempus iaculis urna id volutpat. Mi proin sed libero enim sed faucibus turpis. Convallis tellus id interdum velit laoreet id donec ultrices. At quis risus sed vulputate odio ut enim blandit. Lacus viverra vitae congue eu consequat ac felis donec et. Vitae elementum curabitur vitae nunc sed velit dignissim sodales. In cursus turpis massa tincidunt dui ut. Laoreet non curabitur gravida arcu ac tortor. Habitant morbi tristique senectus et netus et. Sit amet aliquam id diam maecenas ultricies mi. Nulla at volutpat diam ut venenatis tellus in metus.Consequat nisl vel pretium lectus quam id leo. Adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Dui faucibus in ornare quam viverra. Amet mattis vulputate enim nulla aliquet porttitor. Tincidunt praesent semper feugiat nibh sed pulvinar proin. Fermentum posuere urna nec tincidunt. Gravida in fermentum et sollicitudin ac. Ut etiam sit amet nisl. Sem integer vitae justo eget magna. Egestas sed tempus urna et pharetra. Nunc aliquet bibendum enim facilisis gravida neque convallis. Tempus quam pellentesque nec nam aliquam sem et tortor. Porttitor massa id neque aliquam vestibulum morbi blandit cursus risus. Fames ac turpis egestas maecenas pharetra convallis. Pretium fusce id velit ut tortor pretium viverra. Eget duis at tellus at urna condimentum mattis pellentesque id. Elementum curabitur vitae nunc sed. Euismod elementum nisi quis eleifend quam adipiscing vitae proin. Bibendum neque egestas congue quisque....',
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14,
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
