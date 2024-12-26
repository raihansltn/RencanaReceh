import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
// Body text style
  static TextStyle get bodySmallBluegray900 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static TextStyle get bodySmallCyan800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.cyan800,
      );
// Display text style
  static TextStyle get displayLargeBluegray100 =>
      theme.textTheme.displayLarge!.copyWith(
        color: appTheme.blueGray100,
      );
// Headline text style
  static TextStyle get headlineSmallBlack900 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get headlineSmallCyan800 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.cyan800,
      );
// Label text style
  static TextStyle get labelLargeBlack900 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get labelLargeBluegray900 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get labelLargeCyan800 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.cyan800,
      );
  static TextStyle get labelLargeCyan800Medium =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.cyan800,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargePrimary =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get labelMediumPoppins =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
// Poppins text style
  static TextStyle get poppinsBluegray100 => TextStyle(
        color: appTheme.blueGray100,
        fontSize: 96.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  static TextStyle get poppinsCyan800 => TextStyle(
        color: appTheme.cyan800,
        fontSize: 96.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
// Title text style
  static TextStyle get titleLargeBlack900 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );

  static TextStyle get titleLargeCyan800 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.cyan800,
      );
  static TextStyle get titleLargeOnPrimary =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static TextStyle get titleMediumBluegray100 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static TextStyle get titleMediumCyan800 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan800,
      );
  static TextStyle get titleMediumCyan800SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan800,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumOnPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static TextStyle get titleSmallBlack900 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get titleSmallBlack900_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get titleSmallBluegray100 =>
      theme.textTheme.titleSmall!.copyWith();
  static TextStyle get titleSmallBluegray400 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static TextStyle get titleSmallBluegray400_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static TextStyle get titleSmallCyan800 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyan800,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallCyan800_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyan800,
      );
  static TextStyle get titleSmallGray40001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40001,
      );
  static TextStyle get titleSmallIndigo500 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo500,
      );
}
