import 'package:flutter/material.dart';

class Crushform extends ChangeNotifier {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final firstNameFocusNode = FocusNode();
  final lastNameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final mobileNumberFocusNode = FocusNode();
  // final firstNameKey = GlobalKey<FormFieldState<dynamic>>();
  // final lastNameKey = GlobalKey<FormFieldState<dynamic>>();
  // final emailKey = GlobalKey<FormFieldState<dynamic>>();
  // final mobileNumberKey = GlobalKey<FormFieldState<dynamic>>();
  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController phoneController = TextEditingController();

  // final TextEditingController passwordController = TextEditingController();
  // final TextEditingController fullnameController = TextEditingController();
  // // final TextEditingController emailController = TextEditingController();
  // final TextEditingController confirmpasswordController =
  //     TextEditingController();
  loginemail(BuildContext context) {
    final emailname = emailController.text;
    // final password = passwordController.text;

    if (emailname == 'admin@gmail.com') {
      // showtoast('Login Successfully');
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen()));

      // Get.toNamed('/Home');
    } else {
      // showtoast("Enter Valid Email Address");
    }
  }

  // loginPhone(BuildContext context) {
  //   final phonename = phoneController.text;
  // final password = passwordController.text;

  //   if (phonename == '123') {
  //     // showtoast('Login Successfully');
  //     //    Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen()));
  //     // Get.toNamed('/Home');
  //   } else {
  //     // showtoast("Enter Valid Phone Number");
  //   }
  // }

  clearall() {
    emailController.clear();
    firstNameController.clear();
    lastNameController.clear();
    mobileNumberController.clear();
  }

  @override
  void dispose() {
    emailController.dispose();
    lastNameController.dispose();
    mobileNumberController.dispose();
    emailController.dispose();
    
    super.dispose;
  }
}
