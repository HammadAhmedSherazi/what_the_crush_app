import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:what_the_crush_app/src/features/AuthScreens/Build_Profile/identitiyScreen.dart';
import 'package:what_the_crush_app/src/helpers/AppButtons.dart/primarybutton.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';
import 'package:what_the_crush_app/src/helpers/Input_Textfield/Input_Textfield.dart';
import 'package:what_the_crush_app/src/widgets/layout/OnboardingLayout.dart';
import 'package:what_the_crush_app/src/widgets/layout/custom_camera.dart';

class BuildProfile extends StatefulWidget {
  BuildProfile({super.key});

  @override
  State<BuildProfile> createState() => _BuildProfileState();
}

class _BuildProfileState extends State<BuildProfile> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController birthdateController = TextEditingController();
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(body: [
      SingleChildScrollView(
        child: Column(
          children: [
            20.verticalSpace,
            SizedBox(
              width: 335.w,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'all about you',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: AppColors.purpleP500,
                      ),
                ),
              ),
            ),
            40.verticalSpace,
            SizedBox(
                width: 150.w,
                child: CameraWidget(
                  onImageSelected: (imageFile) {
                    setState(() {
                      this.imageFile = imageFile;
                    });
                  },
                )),
            10.verticalSpace,
            Text(
              'upload profile photo',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.purpleP500,
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp),
            ),
            20.verticalSpace,
            InputTextField(
                label: 'first name',
                hint: 'David',
                controller: firstNameController),
            20.verticalSpace,
            InputTextField(
                label: 'last name',
                hint: 'Peterson',
                controller: lastNameController),
            20.verticalSpace,
            InputTextField(
                label: 'email',
                hint: 'DavePeterson@hotmail.com',
                controller: emailController),
            20.verticalSpace,
            InputTextField(
                label: 'phone',
                hint: '(+1) 331 623 8413',
                controller: mobileNumberController),
            20.verticalSpace,
            InputTextField(
                label: 'birthdate',
                hint: '10/21/1992',
                controller: birthdateController),
            20.verticalSpace,
            PrimaryButton(
                text: 'save',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Gender_Identity()));
                })
          ],
        ),
      )
    ]);
  }
}
