import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // Light theme
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: TextTheme(
      bodyLarge: const TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.grey[800]),
      displayLarge: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      // Add more text styles as needed
    ),
    // Customize other theme properties as needed
  );

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: const Color(0xff15141F),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blueGrey[800],
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: TextTheme(
      bodyLarge: const TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.grey[300]), //
      displayLarge: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      // Add more text styles as needed
    ),
    // Customize other theme properties as needed
  );
}
