import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class PhoneNumberField2 extends StatefulWidget {
  final String hinttxt;
  final String labeltxt;

  const PhoneNumberField2(
      {super.key, required this.hinttxt, required this.labeltxt});

  @override
  State<PhoneNumberField2> createState() => _PhoneNumberField2State();
}

class _PhoneNumberField2State extends State<PhoneNumberField2> {
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
     

        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: AppColors.textPrimary,
            ),
        decoration: InputDecoration(
          
          
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
