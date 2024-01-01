import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900,
      );
  // Headline text style
  static get headlineLargeRobotoGray900 =>
      theme.textTheme.headlineLarge!.roboto.copyWith(
        color: appTheme.gray900,
        fontSize: 30.fSize,
      );
  static get headlineLargeRobotoGray90001 =>
      theme.textTheme.headlineLarge!.roboto.copyWith(
        color: appTheme.gray90001,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeRobotoGray90002 =>
      theme.textTheme.headlineLarge!.roboto.copyWith(
        color: appTheme.gray90002,
        fontSize: 30.fSize,
      );
  static get headlineLargeRobotoPrimary =>
      theme.textTheme.headlineLarge!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeRobotoGray900 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray900,
      );
  static get titleLargeRobotoOnPrimary =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
