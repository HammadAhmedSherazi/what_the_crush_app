import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class PhoneNumberField extends StatefulWidget {
  final String hinttxt;
  final String labeltxt;

  const PhoneNumberField(
      {super.key, required this.hinttxt, required this.labeltxt});

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: AppColors.textPrimary,
            ),
        decoration: InputDecoration(
          // suffixIcon: Icon(Icons.check),
          // suffixIconColor: Colors.green,
          filled: true,
          focusColor: Colors.white,
          fillColor: Colors.white,
          labelText: widget.labeltxt,
          hintText: widget.hinttxt,
          hintStyle: const TextStyle(
            color: AppColors.textInactive,
          ),
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
        ));
  }
}
