import 'package:flutter/material.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({
    required this.onTap,
    super.key,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
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
            Icons.close,
            color: AppColors.red,
            size: 14,
          ),
        ),
      ),
    );
  }
}
