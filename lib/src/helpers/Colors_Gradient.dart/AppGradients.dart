import 'package:flutter/material.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

abstract class AppGradients {
  static LinearGradient get secondaryButtonGradient => const LinearGradient(
        begin: Alignment(0.88, 0.47),
        end: Alignment(-0.88, -0.47),
        colors: AppColors.secondaryButtonGradientColors,
      );
  static LinearGradient get mainGradient => const LinearGradient(
        colors: AppColors.gradientMainGradient,
        begin: Alignment.bottomLeft,
        end: Alignment.topCenter,
        stops: [0.0, 0, 1],
      );
  static LinearGradient get secondaryBgGradient => const LinearGradient(
        colors: AppColors.peachWhiteGradient,
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        stops: [0.1, 0.5],
      );
}
