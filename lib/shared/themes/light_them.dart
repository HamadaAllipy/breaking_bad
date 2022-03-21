import 'package:breaking_bad/constants/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  // colorSchemeSeed: Colors.green,
  colorScheme: const ColorScheme.light(
    primary: AppColors.appYellow,
    onPrimary: Colors.black,
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: Colors.white,
    ),
  ),
);