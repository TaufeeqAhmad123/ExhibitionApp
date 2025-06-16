
import 'package:exhibition_app/utils/Theme/text_theme.dart';
import 'package:flutter/material.dart';



class AppTheme {
  static final lightTheme= ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.white,
      onSecondary: Colors.white,
      surface: Colors.grey.shade300, // ✅ Container color
      onSurface: Colors.black,
      background: Colors.white,
      onBackground: Colors.black,
      error: Colors.red,
      onError: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
     
    ),
    dividerColor: Colors.grey.shade200,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: Colors.grey.shade300,
        disabledForegroundColor: Colors.grey.shade600,
        backgroundColor: Colors.black,
        foregroundColor: Colors.black,
        
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
     backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
    ),
    textTheme: customTextTheme(Colors.black)
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(
    primary: Colors.blue,
    onPrimary: Colors.black,
    secondary: Colors.teal,
    onSecondary: Colors.black,
    surface: Colors.grey.shade800,
    onSurface: Colors.white,
    background: Colors.black,
    onBackground: Colors.white,
    error: Colors.red.shade400,
    onError: Colors.black,
  ),
   elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: Colors.grey.shade300,
        disabledForegroundColor: Colors.grey.shade600,
        backgroundColor: Colors.black,
        foregroundColor: Colors.black,
        
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    ),
      iconTheme: const IconThemeData(
      color: Colors.white,
     
    ),
    dividerColor: Colors.white.withOpacity(0.2),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
    ),
    textTheme: customTextTheme(Colors.white)
  );
}
