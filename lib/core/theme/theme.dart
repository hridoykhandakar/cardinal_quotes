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
  );
}
