// custom_text_theme.dart
import 'package:flutter/material.dart';

TextTheme customTextTheme(Color textColor) {
  return TextTheme(
    bodyMedium: TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.3,
    ),
    headlineMedium: TextStyle(
      color: textColor.withOpacity(0.4),
      fontSize: 15,
      height: 1.5,
      fontWeight: FontWeight.w500,
    ),
    // Add more styles as needed
  );
}