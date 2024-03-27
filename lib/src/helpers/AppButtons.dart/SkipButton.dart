import 'package:flutter/material.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CustomSkipButton extends StatelessWidget {
  final void Function()? onPressed;
  const CustomSkipButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        'Skip',
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: AppColors.red,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
