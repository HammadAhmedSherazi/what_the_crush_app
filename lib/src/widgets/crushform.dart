import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:what_the_crush_app/src/features/WelcomeScreens/LandingScreen/view/TellmemoreScreen.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/Input_Textfield/Input_Textfield.dart';
import 'package:what_the_crush_app/src/widgets/edit_anonymous_msg.dart';

class CrushForm extends StatefulWidget {
  CrushForm({super.key});

  @override
  State<CrushForm> createState() => _CrushFormState();
}

class _CrushFormState extends State<CrushForm> {
  final formKey = GlobalKey<FormState>();

  final firstNameController = TextEditingController();

  final lastNameController = TextEditingController();

  final emailController = TextEditingController();

  final mobileNumberController = TextEditingController();

  // final firstNameFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    // final crushformProvider = context.read<Crushform>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          InputTextField(
            label: 'First Name',
            hint: 'Enter your first name',
            controller: firstNameController,
          ),
          25.verticalSpace,
          InputTextField(
            label: 'Last Name',
            hint: 'Enter your last name',
            controller: lastNameController,
          ),
          25.verticalSpace,
          InputTextField(
            label: 'Email',
            hint: 'Enter your Email',
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          25.verticalSpace,
          InputTextField(
            label: 'Mobile',
            hint: 'Enter your mobile number',
            controller: mobileNumberController,
            keyboardType: TextInputType.number,
          ),
          10.verticalSpace,
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Tellmemore_Screen()));
            },
            child: Text(
              'show me how it works',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.blue,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          10.verticalSpace,
          PrimaryButton(
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
            text: 'Send Anonymous Crush Message',
          ),
        ],
      ),
    );
  }
}

          //           25.verticalSpace,
          //           Consumer(
          //             builder: (context, ref, child) {
          //               final crushDetail = ref.watch(crushDetailProvider);
          //               final crushDetailController =
          //                   ref.read(crushDetailProvider.notifier);
          //               return InputTextField(
          //                 formFieldKey: lastNameKey,
          //                 label: 'Last Name',
          //                 focusNode: lastNameFocusNode,
          //                 hint: 'Enter your last name',
          //                 controller: lastNameController,
          //                 onChanged: (value, controller) {},
          //                 validator: (_, controller) {
          //                   final value = controller.value.text;
          //                   final isValid = value.isNotEmpty && value.length >= 3;
          //                   if (crushDetail.isLastNameValid != isValid) {
          //                     Future.delayed(
          //                       const Duration(milliseconds: 100),
          //                       () => crushDetailController.isLastNameValid = isValid,
          //                     );
          //                   }
          //                   if (value.isEmpty) {
          //                     return 'Please enter your last name';
          //                   }
          //                   if (value.length < 3) {
          //                     return 'Last name must be at least 3 characters';
          //                   }
          //                   return null;
          //                 },
          //                 isValid: crushDetailController.isLastNameValid,
          //                 textInputAction: TextInputAction.next,
          //               );
          //             },
          //           ),
          //           25.verticalSpace,
          //           Consumer(
          //             builder: (context, ref, child) {
          //               final crushDetail = ref.watch(crushDetailProvider);
          //               final crushDetailController =
          //                   ref.read(crushDetailProvider.notifier);
          //               return CustomInputWidget(
          //                 formFieldKey: emailKey,
          //                 label: 'Email',
          //                 focusNode: emailFocusNode,
          //                 hint: 'Enter your email',
          //                 controller: emailController,
          //                 keyboardType: TextInputType.emailAddress,
          //                 onChanged: (value, controller) {
          //                   // ref.read(crushDetailProvider).setEmail(controller.value.text);
          //                   // ref
          //                   //     .read(crushDetailProvider)
          //                   //     .setHasEmail(value: controller.value.text.isNotEmpty);
          //                 },
          //                 validator: (_, controller) {
          //                   final value = controller.value.text;
          //                   final isValid =
          //                       ValidationBuilder(optional: true).email().build()(value);
          //                   if (crushDetail.isEmailValid != (isValid == null)) {
          //                     Future.delayed(
          //                       const Duration(milliseconds: 100),
          //                       () =>
          //                           crushDetailController.isEmailValid = isValid == null,
          //                     );
          //                   }
          //                   return isValid;
          //                 },
          //                 isValid: crushDetailController.isEmailValid,
          //                 textInputAction: TextInputAction.next,
          //               );
          //             },
          //           ),
          //           25.verticalSpace,
          //           Consumer(
          //             builder: (context, ref, child) {
          //               final crushDetail = ref.watch(crushDetailProvider);
          //               final crushDetailController =
          //                   ref.read(crushDetailProvider.notifier);
          //               return CustomInputWidget(
          //                 formFieldKey: mobileNumberKey,
          //                 label: 'Mobile Number',
          //                 focusNode: mobileNumberFocusNode,
          //                 hint: 'Enter your mobile number',
          //                 controller: mobileNumberController,
          //                 keyboardType: TextInputType.phone,
          //                 onChanged: (value, controller) {},
          //                 validator: (_, controller) {
          //                   final value = controller.value.text;
          //                   final isValid =
          //                       ValidationBuilder(optional: true).phone().build()(value);
          //                   if (crushDetail.isMobileNumberValid != (isValid == null)) {
          //                     Future.delayed(
          //                       const Duration(milliseconds: 100),
          //                       () => crushDetailController.isMobileNumberValid =
          //                           isValid == null,
          //                     );
          //                   }
          //                   return isValid;
          //                 },
          //                 isValid: crushDetailController.isMobileNumberValid,
          //               );
          //             },
          //           ),
          //           20.verticalSpace,
          //           Consumer(
          //             builder: (context, ref, child) {
          //               final crushDetail = ref.watch(crushDetailProvider);
          //               if (!crushDetail.isFirstNameValid ||
          //                   !crushDetail.isLastNameValid) {
          //                 return Container();
          //               }

          //               return Text(
          //                 (crushDetail.isEmailValid &&
          //                             crushDetail.mobileNumber.isEmpty) ||
          //                         (crushDetail.isMobileNumberValid &&
          //                             crushDetail.email.isEmpty)
          //                     // ignore: lines_longer_than_80_chars
          //                     ? 'Your Chances of matching increases if you provide both email and mobile number'
          //                     : 'Please provide either email or mobile number',
          //                 style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          //                       color: AppColors.red,
          //                     ),
          //               );
          //             },
          //           ),
          //           20.verticalSpace,
          //           Consumer(
          //             builder: (context, ref, child) {
          //               final crushDetail = ref.watch(crushDetailProvider);
          //               final crushDetailController =
          //                   ref.read(crushDetailProvider.notifier);
          //               final saveCrushDetailsUseCase =
          //                   ref.read(saveCrushDetailsUseCaseProvider);
          //               return PrimaryButton(
          //                 onPressed: () async {
          //                   crushDetailController.isLoading = true;
          //                   final isValid = formKey.currentState?.validate();
          //                   if (isValid != null && isValid) {
          //                     crushDetailController.setCrushInfo(
          //                       firstName: firstNameController.text,
          //                       lastName: lastNameController.text,
          //                       email: emailController.text,
          //                       mobileNumber: mobileNumberController.text,
          //                     );
          //                     final crushEntity = CrushDetailsEntity(
          //                       firstName: firstNameController.text,
          //                       lastName: lastNameController.text,
          //                       email: emailController.text,
          //                       mobileNumber: mobileNumberController.text,
          //                     );
          //                     try {
          //                       await saveCrushDetailsUseCase
          //                           .call(crushEntity)
          //                           .then((value) async {
          //                         if (context.mounted) {
          //                           await Navigator.of(context)
          //                               .pushNamed('/VerifyPhoneNumber');
          //                         }
          //                       });
          //                     } on Exception {
          //                       if (context.mounted) {
          //                         ScaffoldMessenger.of(context).showSnackBar(
          //                           SnackBar(
          //                             behavior: SnackBarBehavior.floating,
          //                             width: 0.7.sw,
          //                             backgroundColor: AppColors.red.withOpacity(0.5),
          //                             elevation: 0,
          //                             duration: const Duration(seconds: 5),
          //                             shape: RoundedRectangleBorder(
          //                               borderRadius: BorderRadius.circular(8),
          //                               side: const BorderSide(
          //                                 color: AppColors.red,
          //                               ),
          //                             ),
          //                             content: const Text(
          //                               'Some Error Occurred. Please try again later.',
          //                               textAlign: TextAlign.left,
          //                               style: TextStyle(
          //                                 color: AppColors.red,
          //                                 fontSize: 14,
          //                                 fontWeight: FontWeight.w500,
          //                               ),
          //                             ),
          //                           ),
          //                         );
          //                       }
          //                     } finally {
          //                       crushDetailController.isLoading = false;
          //                     }
          //                   }
          //                 },
          //                 isEnabled: crushDetail.isFirstNameValid &&
          //                     crushDetail.isLastNameValid &&
          //                     (crushDetail.isEmailValid ||
          //                         crushDetail.isMobileNumberValid),
          //                 isLoading: crushDetailController.isLoading,
          //                 text: 'Send Anonymous Crush Message',
          //               );
          //             },
          //           ),
        
