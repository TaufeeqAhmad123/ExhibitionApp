// custom_text_theme.dart
import 'package:exhibition_app/utils/constant/app_typoghraphy.dart';
import 'package:flutter/material.dart';


TextTheme customTextTheme(Color color) {
  return TextTheme(
    displayLarge: AppTypography.kExtraBold56.copyWith(color: color),
    displayMedium: AppTypography.kExtraBold46.copyWith(color: color),
    displaySmall: AppTypography.kBold40.copyWith(color: color),
    headlineLarge: AppTypography.kBold30.copyWith(color: color),
    headlineMedium: AppTypography.kBold28.copyWith(color: color),
    headlineSmall: AppTypography.kBold24.copyWith(color: color),
    titleLarge: AppTypography.kMedium22.copyWith(color: color),
    titleMedium: AppTypography.kMedium18.copyWith(color: color),
    titleSmall: AppTypography.kMedium16.copyWith(color: color),
    bodyLarge: AppTypography.kLight16.copyWith(color: color),
    bodyMedium: AppTypography.kLight14.copyWith(color: color),
    bodySmall: AppTypography.kLight12.copyWith(color: color),
    labelLarge: AppTypography.kMedium14.copyWith(color: color),
    labelMedium: AppTypography.kMedium12.copyWith(color: color),
    labelSmall: AppTypography.kLight10.copyWith(color: color),
  );
}




extension CustomTextTheme on TextTheme {
  // Light
  TextStyle get light6 => AppTypography.kLight6;
  TextStyle get light8 => AppTypography.kLight8;
  TextStyle get light10 => AppTypography.kLight10;
  TextStyle get light12 => AppTypography.kLight12;
  TextStyle get light14 => AppTypography.kLight14;
  TextStyle get light16 => AppTypography.kLight16;
  TextStyle get light18 => AppTypography.kLight18;
  TextStyle get light20 => AppTypography.kLight20;
  TextStyle get light22 => AppTypography.kLight22;
  TextStyle get light24 => AppTypography.kLight24;
  TextStyle get light26 => AppTypography.kLight26;
  TextStyle get light28 => AppTypography.kLight28;
  TextStyle get light30 => AppTypography.kLight30;
  TextStyle get light32 => AppTypography.kLight32;
  TextStyle get light36 => AppTypography.kLight36;

  // Medium
  TextStyle get medium10 => AppTypography.kMedium10;
  TextStyle get medium12 => AppTypography.kMedium12;
  TextStyle get medium14 => AppTypography.kMedium14;
  TextStyle get medium16 => AppTypography.kMedium16;
  TextStyle get medium18 => AppTypography.kMedium18;
  TextStyle get medium20 => AppTypography.kMedium20;
  TextStyle get medium22 => AppTypography.kMedium22;
  TextStyle get medium24 => AppTypography.kMedium24;
  TextStyle get medium26 => AppTypography.kMedium26;
  TextStyle get medium30 => AppTypography.kMedium30;

  // Bold
  TextStyle get bold6 => AppTypography.kBold6;
  TextStyle get bold10 => AppTypography.kBold10;
  TextStyle get bold12 => AppTypography.kBold12;
  TextStyle get bold14 => AppTypography.kBold14;
  TextStyle get bold16 => AppTypography.kBold16;
  TextStyle get bold18 => AppTypography.kBold18;
  TextStyle get bold20 => AppTypography.kBold20;
  TextStyle get bold22 => AppTypography.kBold22;
  TextStyle get bold24 => AppTypography.kBold24;
  TextStyle get bold26 => AppTypography.kBold26;
  TextStyle get bold28 => AppTypography.kBold28;
  TextStyle get bold30 => AppTypography.kBold30;
  TextStyle get bold32 => AppTypography.kBold32;
  TextStyle get bold40 => AppTypography.kBold40;

  // Extra Light
  TextStyle get extraLight8 => AppTypography.kExtraLight8;
  TextStyle get extraLight10 => AppTypography.kExtraLight10;
  TextStyle get extraLight14 => AppTypography.kExtraLight14;
  TextStyle get extraLight20 => AppTypography.kExtraLight20;
  TextStyle get extraLight22 => AppTypography.kExtraLight22;
  TextStyle get extraLight24 => AppTypography.kExtraLight24;
  TextStyle get extraLight26 => AppTypography.kExtraLight26;
  TextStyle get extraLight28 => AppTypography.kExtraLight28;

  // Extra Bold
  TextStyle get extraBold10 => AppTypography.kExtraBold10;
  TextStyle get extraBold12 => AppTypography.kExtraBold12;
  TextStyle get extraBold14 => AppTypography.kExtraBold14;
  TextStyle get extraBold16 => AppTypography.kExtraBold16;
  TextStyle get extraBold18 => AppTypography.kExtraBold18;
  TextStyle get extraBold20 => AppTypography.kExtraBold20;
  TextStyle get extraBold22 => AppTypography.kExtraBold22;
  TextStyle get extraBold24 => AppTypography.kExtraBold24;
  TextStyle get extraBold26 => AppTypography.kExtraBold26;
  TextStyle get extraBold28 => AppTypography.kExtraBold28;
  TextStyle get extraBold30 => AppTypography.kExtraBold30;
  TextStyle get extraBold40 => AppTypography.kExtraBold40;
  TextStyle get extraBold46 => AppTypography.kExtraBold46;
  TextStyle get extraBold56 => AppTypography.kExtraBold56;

  // Didot Fonts
  TextStyle get didotRegular34 => AppTypography.kDidotRegular34;
  TextStyle get didotBold34 => AppTypography.kDidotBold34;
  TextStyle get didotItalic34 => AppTypography.kDidotItalic34;
  TextStyle get didotTitle34 => AppTypography.kDidotTitle34;
}