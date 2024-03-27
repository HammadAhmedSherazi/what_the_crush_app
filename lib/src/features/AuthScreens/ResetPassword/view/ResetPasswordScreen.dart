import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/SigninScreen/view/SigninScreen.dart';
import 'package:what_the_crush_app/src/features/HomeScreen/HomeProfileScreens/widgets/EditScreenTextfields.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/Input_Textfield/Input_Textfield.dart';
import 'package:what_the_crush_app/src/widgets/SheetIndicator.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final NewPassword = TextEditingController();
  final ResetPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      20.verticalSpace,
      Image.asset(
        'assets/images/app_logo.png',
        // width: 149.w,
        // height: 113.h,
        fit: BoxFit.cover,
      ),
      20.verticalSpace,
      InputTextField(
          fillColor: Colors.white,
          keyboardType: TextInputType.emailAddress,
          label: "Type new password",
          hint: "Type new password",
          controller: NewPassword),
      15.verticalSpace,
      InputTextField(
          fillColor: Colors.white,
          keyboardType: TextInputType.emailAddress,
          label: "Retype new password",
          hint: "Type new password",
          controller: ResetPassword),
      20.verticalSpace,
      PrimaryButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SigninScreen()));
        },
        text: 'reset password',
        textStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: AppColors.purpleP500,
              fontWeight: FontWeight.w700,
            ),
      ),
      20.verticalSpace,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Remember your password?',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.textPrimary,
                ),
          ),
          TextButton(
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SigninScreen())),
            },
            child: Text(
              'sign in',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.purpleP500,
                  ),
            ),
          ),
        ],
      ),
      10.verticalSpace,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'login issues? ',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.textPrimary,
                ),
          ),
          TextButton(
            onPressed: () {
              ModalBottomsheet1(context);
            },
            child: Text(
              'reach out to us',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.blue,
                  ),
            ),
          ),
        ],
      ),
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
                      color: AppColors.white,
                    ),
                    child: Column(
                      children: [
                        // Draggablehandle bar
                        SheetIndicator(),
                        Expanded(
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: GestureDetector(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25.w, vertical: 15.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'support',
                                      style: TextStyle(
                                          color: AppColors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.sp),
                                    ),
                                    Text(
                                      'typically replies within 24 hours',
                                      style: TextStyle(
                                        color: AppColors.textInactive,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                    10.verticalSpace,
                                    Text(
                                      'your details',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            color: AppColors.textSecondary,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.sp,
                                          ),
                                    ),
                                    10.verticalSpace,
                                    EditProfileEmailField(
                                      txt1: 'first\nname',
                                      txt2: 'Annabelle',
                                    ),
                                    EditProfileEmailField(
                                      txt1: 'last\nname',
                                      txt2: 'Parker',
                                    ),
                                    FieldWithIcon(
                                        onPressed: () {},
                                        icon: Icons.flag_circle_rounded,
                                        txt1: 'Phone2',
                                        txt2: '(+1) 331 623 8413'),
                                    EditProfileEmailField(
                                      txt1: 'primary\nemail',
                                      txt2: 'toni.augilera@outlook.com',
                                    ),
                                    10.verticalSpace,
                                    Text(
                                      'your concern',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            color: AppColors.textSecondary,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.sp,
                                          ),
                                    ),
                                    10.verticalSpace,
                                    HintTextIcon(
                                      onPressed: () {
                                        // showModalBottomSheet(
                                        //   isScrollControlled: true,
                                        //   context: context,
                                        //   builder: (BuildContext context) {
                                        //     return InterestedBottomSheet();
                                        //   },
                                        // );
                                      },
                                      txt: 'login issues',
                                      icon: Icons.keyboard_arrow_down_outlined,
                                    ),
                                    5.verticalSpace,
                                    AboutField(),
                                    25.verticalSpace,
                                    PrimaryButton(
                                        text: 'send', onPressed: () {})
                                  ],
                                ),
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
