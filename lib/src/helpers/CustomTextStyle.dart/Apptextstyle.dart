import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// Enum for AppTextTheme
enum AppTextTheme {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
  headline1,
  headline2,
  headline3,
  headline4,
  headline5,
  headline6,
  subtitle1,
  subtitle2,
  bodyText1,
  bodyText2,
  caption,
  button,
  overline,
}

// Interface for enforcing the creation of text styles in AppTextStyle
// abstract class MaterialTextStyleInterface {
//   TextStyle displayLarge(BuildContext context);
//   TextStyle displayMedium(BuildContext context);
//   TextStyle displaySmall(BuildContext context);
//   TextStyle headlineLarge(BuildContext context);
//   TextStyle headlineMedium(BuildContext context);
//   TextStyle headlineSmall(BuildContext context);
//   TextStyle titleLarge(BuildContext context);
//   TextStyle titleMedium(BuildContext context);
//   TextStyle titleSmall(BuildContext context);
//   TextStyle bodyLarge(BuildContext context);
//   TextStyle bodyMedium(BuildContext context);
//   TextStyle bodySmall(BuildContext context);
//   TextStyle labelLarge(BuildContext context);
//   TextStyle labelMedium(BuildContext context);
//   TextStyle labelSmall(BuildContext context);
//   TextStyle headline1(BuildContext context);
//   TextStyle headline2(BuildContext context);
//   TextStyle headline3(BuildContext context);
//   TextStyle headline4(BuildContext context);
//   TextStyle headline5(BuildContext context);
//   TextStyle headline6(BuildContext context);
//   TextStyle subtitle1(BuildContext context);
//   TextStyle subtitle2(BuildContext context);
//   TextStyle bodyText1(BuildContext context);
//   TextStyle bodyText2(BuildContext context);
//   TextStyle caption(BuildContext context);
//   TextStyle button(BuildContext context);
//   TextStyle overline(BuildContext context);
// }

abstract class AppTextStyle {
  static TextStyle displayLarge(BuildContext context) =>
      _getResponsiveTextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle displayMedium(BuildContext context) =>
      _getResponsiveTextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle displaySmall(BuildContext context) =>
      _getResponsiveTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle headlineLarge(BuildContext context) =>
      _getResponsiveTextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle headlineMedium(BuildContext context) =>
      _getResponsiveTextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle headlineSmall(BuildContext context) =>
      _getResponsiveTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle titleLarge(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle titleMedium(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle titleSmall(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle bodyLarge(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        height: 1.2,
        fontFamily: 'Avenir',
        context: context,
      );

  static TextStyle bodyMedium(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        height: 1.2,
        fontFamily: 'Avenir',
        context: context,
      );

  static TextStyle bodySmall(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w300,
        height: 1.2,
        fontFamily: 'Avenir',
        context: context,
      );

  static TextStyle labelLarge(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle labelMedium(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.2,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle labelSmall(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.2,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle headline1(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle headline2(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle headline3(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle headline4(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w500,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle headline5(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        height: 1.1,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle headline6(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.2,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle subtitle1(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        height: 1.2,
        fontFamily: 'Avenir',
        context: context,
      );

  static TextStyle subtitle2(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        height: 1.2,
        fontFamily: 'Avenir',
        context: context,
      );

  static TextStyle bodyText1(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        height: 1.2,
        fontFamily: 'Avenir',
        context: context,
      );

  static TextStyle bodyText2(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        height: 1.2,
        fontFamily: 'Avenir',
        context: context,
      );

  static TextStyle caption(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w300,
        height: 1.2,
        fontFamily: 'Avenir',
        context: context,
      );

  static TextStyle button(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        height: 1.2,
        fontFamily: 'Cabin',
        context: context,
      );

  static TextStyle overline(BuildContext context) => _getResponsiveTextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w300,
        height: 1.2,
        fontFamily: 'Avenir',
        context: context,
      );

  static double _textScaleFactor(BuildContext context) {
    return MediaQuery.of(context).textScaleFactor;
  }

  static double _responsiveFontSize(double fontSize, BuildContext context) {
    return ScreenUtil().setSp(fontSize) * _textScaleFactor(context);
  }

  static double _responsiveHeight(double height, BuildContext context) {
    return ScreenUtil().setHeight(height) * _textScaleFactor(context);
  }

  static TextStyle _getResponsiveTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required double height,
    required String fontFamily,
    required BuildContext context,
  }) {
    return TextStyle(
      fontSize: _responsiveFontSize(fontSize, context),
      fontWeight: fontWeight,
      height: _responsiveHeight(height, context),
      fontFamily:
          fontFamily == 'Cabin' ? GoogleFonts.cabin().fontFamily : 'Avenir',
    );
  }
}
