import 'package:flutter/material.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/CustomTextStyles.dart';

import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class AppTheme {
  AppTheme(this.context);
  final BuildContext context;

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.bg,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        textTheme: CustomAppTypography(context),
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.bg,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        textTheme: CustomAppTypography(context),
      );
}
