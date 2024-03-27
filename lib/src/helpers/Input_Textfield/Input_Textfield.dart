import 'package:flutter/material.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

// class CustomInputWidget extends ChangeNotifier {
//    CustomInputWidget({
//     required this.label,
//     required this.hint,
//     required this.controller,
//     required this.focusNode,
//     required this.formFieldKey,
//     this.showValidationState = false,
//     this.validator,
//     this.onChanged,
//     this.keyboardType,
//     this.maxLength,
//     this.textInputAction = TextInputAction.done,

//     this.validationIcon,
//     this.invalidIcon,
//     this.isEnabled = true,
//     this.initialValue,
//     this.fillColor,
//     this.obscureText = false,
//     this.suffixIcon,
//     this.isValid = false,
//     this.prefixIcon,
//     this.hintTextStyle,
//   });

//   final String label;
//   final String hint;
//   final TextEditingController controller;
//   final FocusNode focusNode;
//   late final bool showValidationState;
//   final Widget? validationIcon;
//   final Widget? invalidIcon;
//   final TextStyle? hintTextStyle;
//   final String? Function(String?, TextEditingController)? validator;
//   final void Function(String, TextEditingController)? onChanged;
//   final TextInputType? keyboardType;
//   final int? maxLength;
//   final TextInputAction textInputAction;
//   final GlobalKey<FormFieldState<dynamic>> formFieldKey;
//   final bool isEnabled;
//   final bool isValid;
//   final String? initialValue;
//   final Color? fillColor;
//   final bool? obscureText;
//   final Widget? suffixIcon;
//   final Widget? prefixIcon;

//   void setHasInteracted(bool value) {
//     showValidationState = value;
//     notifyListeners();
//   }
// }

// class CustomInputProvider extends ChangeNotifier {
//   CustomInputState _state;

//   CustomInputProvider({
//     required CustomInputState state,
//   }) : _state = state;

//   CustomInputState get state => _state;

//   void updateState(CustomInputState newState) {
//     _state = newState;
//     notifyListeners();
//   }
// }

class InputTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  // final FocusNode focusNode;
  // final bool showValidationState;
  // final Widget? validationIcon;
  // final Widget? invalidIcon;
  final TextStyle? hintTextStyle;
  // final TextEditingController controller;
  // final String? Function(String?, TextEditingController)? validator;
  // final void Function(String, TextEditingController)? onChanged;
  final TextInputType? keyboardType;
  // final int? maxLength;
  // final TextInputAction textInputAction;
  // final GlobalKey<FormFieldState<dynamic>> formFieldKey;
  // final bool isEnabled;
  // final bool isValid;
  // final String? initialValue;
  final Color? fillColor;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  InputTextField({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    // required this.focusNode,
    // required this.showValidationState,
    // this.validationIcon,
    // this.invalidIcon,
    this.hintTextStyle,
    // this.validator,
    // this.onChanged,
    this.keyboardType,
    // this.maxLength,
    //  required this.textInputAction,
    //  required this.formFieldKey,
    // required this.isEnabled,
    // required this.isValid,
    // this.initialValue,
    this.fillColor,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // key: formFieldKey,
      // focusNode:focusNode,
      // enabled: isEnabled,
      // initialValue: initialValue,
      style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: AppColors.textPrimary,
            //  AppColors.textPrimary.withOpacity(0.5),
          ),

      decoration: InputDecoration(
        filled: fillColor != null,
        fillColor: fillColor,
        labelText: label,
        labelStyle: const TextStyle(
          color: AppColors.textInactive,
        ),
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hint,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        // suffixIcon: showValidationState
        //     ? isValid
        //         ? validationIcon
        //         : invalidIcon
        // : suffixIcon,
        hintStyle: const TextStyle(
          color: AppColors.textInactive,
        ).merge(hintTextStyle),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.border,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.red,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.red,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.border,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.border,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      // onChanged: (value) {
      //   // controller.text = value;
      //   if (onChanged != null) {
      //     onChanged!.call(value, controller);
      //   }
      // },
      // cursorOpacityAnimates: true,
      // validator: (value) {
      //   if (validator != null) {
      //     return validator!.call(value, controller);
      //   }
      //   return null;
      // },
      // onTapOutside: (event) {
      //   FocusManager.instance.primaryFocus?.unfocus();
      // },
      // onEditingComplete: () {
      //   final error = validator?.call(
      //     controller.value.text,
      //     controller,
      //   );

      // if (error == null) {
      //   FocusManager.instance.primaryFocus?.nextFocus();
      // }
      // Future.delayed(const Duration(milliseconds: 100), () {
      //   setState(() {
      //     _isValid = error == null;
      //     _hasInteracted = true;
      //   });
      //   // });
      // },
      // onFieldSubmitted: (value) {
      // if (!_hasInteracted) {
      //   setState(() {
      //     _hasInteracted = true;
      //   });
      // }
      // },
      keyboardType: keyboardType,
      // maxLength: maxLength,
      // textInputAction: textInputAction,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText ?? false,
    );
  }
}
