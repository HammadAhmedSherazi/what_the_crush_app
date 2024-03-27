import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/MainGradientText.dart';
import 'package:what_the_crush_app/src/widgets/crushform.dart';

class Crush_Detail_Form extends StatefulWidget {
  const Crush_Detail_Form({super.key});

  @override
  State<Crush_Detail_Form> createState() => _Crush_Detail_FormState();
}

class _Crush_Detail_FormState extends State<Crush_Detail_Form> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
                // height: 2.sh,
                width: double.infinity,
                // constraints: BoxConstraints(
                //   minHeight: 1.sh,
                //   minWidth: 1.sw,
                // ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/onboarding_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          20.verticalSpace,
                          Text(
                            'Who is your\nsecret crush?',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                  color: AppColors.purpleP500,
                                ),
                          ),
                          20.verticalSpace,
                          const CustomMainGradientText(
                            text: 'First 3 discreet\ncrush messages are FREE',
                            textAlign: TextAlign.start,
                          ),
                          10.verticalSpace,
                          Text(
                            'Your identity is never revealed. PERIOD.',
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: AppColors.textInactive,
                                    fontSize: 12.sp),
                          ),
                          25.verticalSpace,
                          CrushForm(),

                          25.verticalSpace,
                          // PrimaryButton(
                          //   onPressed: () {},
                          //   text: 'Send Anonymous Crush Message',

                          //   crushDetailController.isLoading = true;
                          //   final isValid = formKey.currentState?.validate();
                          //   if (isValid != null && isValid) {
                          //     crushDetailController.setCrushInfo(
                          //       firstName: firstNameController.text,
                          //       lastName: lastNameController.text,
                          //       email: emailController.text,
                          //       mobileNumber: mobileNumberController.text,
                          //     );
                          //     final crushEntity = CrushDetailsEntity(
                          //       firstName: firstNameController.text,
                          //       lastName: lastNameController.text,
                          //       email: emailController.text,
                          //       mobileNumber: mobileNumberController.text,
                          //     );
                          //     try {
                          //       await saveCrushDetailsUseCase
                          //           .call(crushEntity)
                          //           .then((value) async {
                          //         if (context.mounted) {
                          //           await Navigator.of(context)
                          //               .pushNamed('/VerifyPhoneNumber');
                          //         }
                          //       });
                          //     } on Exception {
                          //       if (context.mounted) {
                          //         ScaffoldMessenger.of(context).showSnackBar(
                          //           SnackBar(
                          //             behavior: SnackBarBehavior.floating,
                          //             width: 0.7.sw,
                          //             backgroundColor: AppColors.red.withOpacity(0.5),
                          //             elevation: 0,
                          //             duration: const Duration(seconds: 5),
                          //             shape: RoundedRectangleBorder(
                          //               borderRadius: BorderRadius.circular(8),
                          //               side: const BorderSide(
                          //                 color: AppColors.red,
                          //               ),
                          //             ),
                          //             content: const Text(
                          //               'Some Error Occurred. Please try again later.',
                          //               textAlign: TextAlign.left,
                          //               style: TextStyle(
                          //                 color: AppColors.red,
                          //                 fontSize: 14,
                          //                 fontWeight: FontWeight.w500,
                          //               ),
                          //             ),
                          //           ),
                          //         );
                          //       }
                          //     } finally {
                          //       crushDetailController.isLoading = false;
                          //     }
                          //   }
                          // },
                          // isEnabled: crushDetail.isFirstNameValid &&
                          //     crushDetail.isLastNameValid &&
                          //     (crushDetail.isEmailValid ||
                          //         crushDetail.isMobileNumberValid),
                          // isLoading: crushDetailController.isLoading,
                          // )
                          // 40.verticalSpace,
                        ])))),
          )),
    );
  }
}
