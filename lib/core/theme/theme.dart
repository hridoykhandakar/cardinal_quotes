import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.color3, width: 1),
        borderRadius: BorderRadius.circular(6),
        gapPadding: 0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.color3, width: 1),
        borderRadius: BorderRadius.circular(6),
        gapPadding: 0,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    ),
    textTheme: TextTheme(
      // bodyLarge: TextStyle(fontSize: 16, color: AppColors.color1),
      // bodyMedium: TextStyle(fontSize: 14, color: AppColors.color1),
      // bodySmall: TextStyle(fontSize: 12, color: AppColors.color1),
      // titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.color1),
      // titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.color1),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.color1,
      ),
    ),
  );
}
