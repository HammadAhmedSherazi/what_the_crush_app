// Material Design Typography

import 'package:flutter/material.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/Apptextstyle.dart';

// import 'package:what_the_crush_app/src/helpers/TextStyles.dart';

class CustomAppTypography extends TextTheme {
  const CustomAppTypography(
    this.context,
  );
  final BuildContext context;

  @override
  TextStyle get labelLarge => AppTextStyle.labelLarge(context);

  @override
  TextStyle get labelMedium => AppTextStyle.labelMedium(context);

  @override
  TextStyle get labelSmall => AppTextStyle.labelSmall(context);

  @override
  TextStyle get bodyLarge => AppTextStyle.bodyLarge(context);

  @override
  TextStyle get bodyMedium => AppTextStyle.bodyMedium(context);

  @override
  TextStyle get bodySmall => AppTextStyle.bodySmall(context);

  @override
  TextStyle get titleLarge => AppTextStyle.titleLarge(context);

  @override
  TextStyle get titleMedium => AppTextStyle.titleMedium(context);

  @override
  TextStyle get titleSmall => AppTextStyle.titleSmall(context);

  @override
  TextStyle get headlineLarge => AppTextStyle.headlineLarge(context);

  @override
  TextStyle get headlineMedium => AppTextStyle.headlineMedium(context);

  @override
  TextStyle get headlineSmall => AppTextStyle.headlineSmall(context);

  @override
  TextStyle get displayLarge => AppTextStyle.displayLarge(context);

  @override
  TextStyle get displayMedium => AppTextStyle.displayMedium(context);

  @override
  TextStyle get displaySmall => AppTextStyle.displaySmall(context);

  @override
  TextStyle get button => AppTextStyle.button(context);

  @override
  TextStyle get caption => AppTextStyle.caption(context);

  @override
  TextStyle get overline => AppTextStyle.overline(context);

  @override
  TextStyle get subtitle1 => AppTextStyle.subtitle1(context);

  @override
  TextStyle get subtitle2 => AppTextStyle.subtitle2(context);

  @override
  TextStyle get bodyText1 => AppTextStyle.bodyText1(context);

  @override
  TextStyle get bodyText2 => AppTextStyle.bodyText2(context);
}
