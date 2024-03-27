import 'package:flutter/material.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          // padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.border,
            ),
          ),
          width: 52,
          height: 52,
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.red,
            size: 14,
          ),
        ),
      ),
    );
  }
}
